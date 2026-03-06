#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
from geometry_msgs.msg import TransformStamped, Pose
from cv_bridge import CvBridge
import cv2
import mediapipe as mp
import numpy as np
import tf2_ros
import tf2_geometry_msgs


class HandTrackingRobotNode(Node):
    def __init__(self):
        super().__init__('hand_tracking_robot_node')
        
        self.declare_parameter('camera_topic', '/camera/camera/color/image_raw')
        self.declare_parameter('depth_topic', '/camera/camera/depth/image_rect_raw')
        self.declare_parameter('show_image', False)
        self.declare_parameter('target_z', 200.0)
        self.declare_parameter('camera_mount_x', 200.0)
        self.declare_parameter('camera_mount_y', 0.0)
        self.declare_parameter('camera_mount_z', 300.0)
        self.declare_parameter('camera_mount_roll', 0.0)
        self.declare_parameter('camera_mount_pitch', 1.57)
        self.declare_parameter('camera_mount_yaw', 0.0)
        
        camera_topic = self.get_parameter('camera_topic').value
        depth_topic = self.get_parameter('depth_topic').value
        self.show_image = self.get_parameter('show_image').value
        self.target_z = self.get_parameter('target_z').value
        
        self.camera_mount_x = self.get_parameter('camera_mount_x').value
        self.camera_mount_y = self.get_parameter('camera_mount_y').value
        self.camera_mount_z = self.get_parameter('camera_mount_z').value
        self.camera_mount_roll = self.get_parameter('camera_mount_roll').value
        self.camera_mount_pitch = self.get_parameter('camera_mount_pitch').value
        self.camera_mount_yaw = self.get_parameter('camera_mount_yaw').value
        
        self.fx = 615.0
        self.fy = 615.0
        self.cx = 320.0
        self.cy = 240.0
        
        self.get_logger().info(f'Camera topic: {camera_topic}')
        self.get_logger().info(f'Target Z: {self.target_z}')
        self.get_logger().info(f'Camera mount position: ({self.camera_mount_x}, {self.camera_mount_y}, {self.camera_mount_z})')
        
        self.bridge = CvBridge()
        
        self.mp_hands = mp.solutions.hands
        self.mp_drawing = mp.solutions.drawing_utils
        self.hands = self.mp_hands.Hands(
            static_image_mode=False,
            max_num_hands=1,
            min_detection_confidence=0.7,
            min_tracking_confidence=0.5
        )
        
        self.image_sub = self.create_subscription(
            Image,
            camera_topic,
            self.image_callback,
            10
        )
        
        self.depth_sub = None
        self.latest_depth = None
        
        try:
            self.depth_sub = self.create_subscription(
                Image,
                depth_topic,
                self.depth_callback,
                10
            )
        except Exception as e:
            self.get_logger().warn(f'Cannot subscribe to depth topic: {e}')
        
        self.hand_position_pub = self.create_publisher(
            Image,
            '/hand_tracking/hand_position_image',
            10
        )
        
        self.robot_pose_pub = self.create_publisher(
            Pose,
            '/hand_tracking/robot_pose',
            10
        )
        
        self.tf_buffer = tf2_ros.Buffer()
        self.tf_listener = tf2_ros.TransformListener(self.tf_buffer, self)
        self.tf_broadcaster = tf2_ros.TransformBroadcaster(self)
        
        self.camera_frame_id = 'camera_color_optical_frame'
        self.target_frame_id = 'base_link'
        
        self.get_logger().info('Hand tracking robot node started')
        
    def depth_callback(self, msg):
        try:
            self.latest_depth = self.bridge.imgmsg_to_cv2(msg, desired_encoding='passthrough')
        except Exception as e:
            pass
    
    def euler_to_rotation_matrix(self, roll, pitch, yaw):
        Rx = np.array([[1, 0, 0],
                       [0, np.cos(roll), -np.sin(roll)],
                       [0, np.sin(roll), np.cos(roll)]])
        
        Ry = np.array([[np.cos(pitch), 0, np.sin(pitch)],
                       [0, 1, 0],
                       [-np.sin(pitch), 0, np.cos(pitch)]])
        
        Rz = np.array([[np.cos(yaw), -np.sin(yaw), 0],
                       [np.sin(yaw), np.cos(yaw), 0],
                       [0, 0, 1]])
        
        return Rz @ Ry @ Rx
    
    def camera_to_robot_coords(self, x_cam, y_cam, z_cam):
        roll = self.camera_mount_roll
        pitch = self.camera_mount_pitch
        yaw = self.camera_mount_yaw
        
        R = self.euler_to_rotation_matrix(roll, pitch, yaw)
        
        camera_pos = np.array([x_cam, y_cam, z_cam])
        
        robot_pos = R @ camera_pos
        
        x_robot = robot_pos[0] + self.camera_mount_x
        y_robot = robot_pos[1] + self.camera_mount_y
        z_robot = robot_pos[2] + self.camera_mount_z
        
        return x_robot, y_robot, z_robot
    
    def image_callback(self, msg):
        try:
            cv_image = self.bridge.imgmsg_to_cv2(msg, desired_encoding='bgr8')
        except Exception as e:
            self.get_logger().error(f'Failed to convert image: {e}')
            return
        
        rgb_image = cv2.cvtColor(cv_image, cv2.COLOR_BGR2RGB)
        
        results = self.hands.process(rgb_image)
        
        if results.multi_hand_landmarks:
            for hand_landmarks in results.multi_hand_landmarks:
                self.mp_drawing.draw_landmarks(
                    cv_image,
                    hand_landmarks,
                    self.mp_hands.HAND_CONNECTIONS
                )
                
                index_finger_tip = hand_landmarks.landmark[8]
                h, w, _ = cv_image.shape
                u = int(index_finger_tip.x * w)
                v = int(index_finger_tip.y * h)
                
                depth = self.target_z
                
                if self.latest_depth is not None:
                    try:
                        depth_mm = self.latest_depth[v, u]
                        if depth_mm > 0 and depth_mm < 10000:
                            depth = depth_mm / 1000.0 * 1000.0
                    except:
                        pass
                
                x_cam = (u - self.cx) * depth / self.fx
                y_cam = (v - self.cy) * depth / self.fy
                z_cam = depth
                
                robot_x, robot_y, robot_z = self.camera_to_robot_coords(x_cam, y_cam, z_cam)
                
                self.get_logger().info(
                    f'Camera: ({x_cam:.1f}, {y_cam:.1f}, {z_cam:.1f}) -> '
                    f'Robot: ({robot_x:.1f}, {robot_y:.1f}, {robot_z:.1f})'
                )
                
                cv2.circle(cv_image, (u, v), 15, (0, 255, 0), -1)
                cv2.putText(
                    cv_image, 
                    f'Robot: ({robot_x:.0f}, {robot_y:.0f}, {robot_z:.0f})', 
                    (u + 20, v),
                    cv2.FONT_HERSHEY_SIMPLEX, 
                    0.6, 
                    (0, 255, 0), 
                    2
                )
                
                pose = Pose()
                pose.position.x = robot_x / 1000.0
                pose.position.y = robot_y / 1000.0
                pose.position.z = robot_z / 1000.0
                pose.orientation.x = 0.0
                pose.orientation.y = 0.0
                pose.orientation.z = 0.0
                pose.orientation.w = 1.0
                self.robot_pose_pub.publish(pose)
                
                self.broadcast_hand_transform(robot_x, robot_y, robot_z)
        
        if self.show_image:
            cv2.imshow('Hand Tracking', cv_image)
            cv2.waitKey(1)
        
        try:
            output_msg = self.bridge.cv2_to_imgmsg(cv_image, encoding='bgr8')
            self.hand_position_pub.publish(output_msg)
        except Exception as e:
            self.get_logger().error(f'Failed to publish image: {e}')
    
    def broadcast_hand_transform(self, x, y, z):
        t = TransformStamped()
        t.header.stamp = self.get_clock().now().to_msg()
        t.header.frame_id = self.target_frame_id
        t.child_frame_id = 'hand_position'
        t.transform.translation.x = x / 1000.0
        t.transform.translation.y = y / 1000.0
        t.transform.translation.z = z / 1000.0
        t.transform.rotation.x = 0.0
        t.transform.rotation.y = 0.0
        t.transform.rotation.z = 0.0
        t.transform.rotation.w = 1.0
        
        self.tf_broadcaster.sendTransform(t)


def main(args=None):
    rclpy.init(args=args)
    node = HandTrackingRobotNode()
    
    try:
        rclpy.spin(node)
    except KeyboardInterrupt:
        pass
    finally:
        node.destroy_node()
        rclpy.shutdown()
        cv2.destroyAllWindows()


if __name__ == '__main__':
    main()

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


class HandTracking3DNode(Node):
    def __init__(self):
        super().__init__('hand_tracking_3d_node')
        
        self.declare_parameter('camera_topic', '/camera/camera/color/image_raw')
        self.declare_parameter('show_image', True)
        self.declare_parameter('target_z', 500.0)
        
        camera_topic = self.get_parameter('camera_topic').value
        self.show_image = self.get_parameter('show_image').value
        self.target_z = self.get_parameter('target_z').value
        
        self.get_logger().info(f'Camera topic: {camera_topic}')
        self.get_logger().info(f'Target Z: {self.target_z}')
        
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
        
        self.tf_broadcaster = tf2_ros.TransformBroadcaster(self)
        
        self.camera_frame_id = 'camera_color_optical_frame'
        self.target_frame_id = 'base_link'
        
        # 点对匹配数据
        # 相机像素坐标 -> 机器人坐标 (x, y, z) in mm
        self.point_pairs = {
            # 示例点对，需要根据实际测量修改
            (276, 200): (-664, 30, 200),    # 左上方
            (381, 342): (-513, -148, 200),    # 中心
            (432, 152): (-473, 110, 200),    # 右下方
        }
        
        # 计算变换矩阵
        self.transform_matrix = self.calculate_transform_matrix()
        
        self.get_logger().info('Hand tracking 3D node started')
        
    def calculate_transform_matrix(self):
        """使用点对计算变换矩阵"""
        if len(self.point_pairs) < 3:
            self.get_logger().warn('需要至少3个点对')
            return None
        
        # 准备点对数据
        camera_points = []
        robot_points = []
        
        for camera_pt, robot_pt in self.point_pairs.items():
            camera_points.append([camera_pt[0], camera_pt[1]])
            robot_points.append([robot_pt[0], robot_pt[1]])
        
        # 转换为numpy数组
        src = np.array(camera_points, dtype=np.float32)
        dst = np.array(robot_points, dtype=np.float32)
        
        self.get_logger().info(f'相机点: {src}')
        self.get_logger().info(f'机器人点: {dst}')
        
        # 计算仿射变换矩阵
        try:
            transform_matrix = cv2.getAffineTransform(src[:3], dst[:3])
            self.get_logger().info(f'变换矩阵计算完成: \n{transform_matrix}')
        except Exception as e:
            self.get_logger().error(f'变换矩阵计算失败: {e}')
            transform_matrix = None
        
        return transform_matrix
    
    def transform_point(self, x, y):
        """使用变换矩阵转换点"""
        if self.transform_matrix is None:
            return x, y, self.target_z
        
        # 应用仿射变换
        point = np.array([x, y], dtype=np.float32)
        point = np.array([[point]])
        transformed = cv2.transform(point, self.transform_matrix)
        
        return transformed[0][0][0], transformed[0][0][1], self.target_z
    
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
                
                # 使用点对变换获取机器人坐标
                robot_x, robot_y, robot_z = self.transform_point(u, v)
                
                self.get_logger().info(
                    f'Pixel: ({u}, {v}) -> Robot: ({robot_x:.1f}, {robot_y:.1f}, {robot_z:.1f}) mm'
                )
                
                cv2.circle(cv_image, (u, v), 15, (0, 255, 0), -1)
                
                cv2.putText(
                    cv_image, 
                    f'Pixel: ({u}, {v})', 
                    (u + 20, v - 25),
                    cv2.FONT_HERSHEY_SIMPLEX, 
                    0.5, 
                    (255, 255, 0), 
                    2
                )
                
                cv2.putText(
                    cv_image, 
                    f'Robot: ({robot_x:.0f}, {robot_y:.0f}, {robot_z:.0f}) mm', 
                    (u + 20, v),
                    cv2.FONT_HERSHEY_SIMPLEX, 
                    0.6, 
                    (0, 255, 0), 
                    2
                )
                
                # 发布机器人坐标
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
    node = HandTracking3DNode()
    
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

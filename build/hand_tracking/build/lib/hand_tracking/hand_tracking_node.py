#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import mediapipe as mp
import numpy as np


class HandTrackingNode(Node):
    def __init__(self):
        super().__init__('hand_tracking_node')
        
        self.declare_parameter('camera_topic', '/camera/camera/color/image_raw')
        self.declare_parameter('show_image', True)
        self.declare_parameter('min_detection_confidence', 0.7)
        
        camera_topic = self.get_parameter('camera_topic').value
        self.show_image = self.get_parameter('show_image').value
        min_detection_confidence = self.get_parameter('min_detection_confidence').value
        
        self.get_logger().info(f'Subscribing to: {camera_topic}')
        
        self.bridge = CvBridge()
        
        self.mp_hands = mp.solutions.hands
        self.mp_drawing = mp.solutions.drawing_utils
        self.hands = self.mp_hands.Hands(
            static_image_mode=False,
            max_num_hands=1,
            min_detection_confidence=min_detection_confidence,
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
        
        self.get_logger().info('Hand tracking node started')
        
    def image_callback(self, msg):
        try:
            cv_image = self.bridge.imgmsg_to_cv2(msg, desired_encoding='bgr8')
        except Exception as e:
            self.get_logger().error(f'Failed to convert image: {e}')
            return
        
        rgb_image = cv2.cvtColor(cv_image, cv2.COLOR_BGR2RGB)
        
        results = self.hands.process(rgb_image)
        
        hand_position = None
        
        if results.multi_hand_landmarks:
            for hand_landmarks in results.multi_hand_landmarks:
                self.mp_drawing.draw_landmarks(
                    cv_image,
                    hand_landmarks,
                    self.mp_hands.HAND_CONNECTIONS
                )
                
                index_finger_tip = hand_landmarks.landmark[8]
                h, w, _ = cv_image.shape
                x = int(index_finger_tip.x * w)
                y = int(index_finger_tip.y * h)
                
                hand_position = (x, y)
                
                cv2.circle(cv_image, (x, y), 15, (0, 255, 0), -1)
                cv2.putText(cv_image, f'Hand: ({x}, {y})', (x + 20, y),
                           cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 0), 2)
                
                self.get_logger().info(f'Hand position: x={x}, y={y}')
        
        if self.show_image:
            cv2.imshow('Hand Tracking', cv_image)
            cv2.waitKey(1)
        
        try:
            output_msg = self.bridge.cv2_to_imgmsg(cv_image, encoding='bgr8')
            self.hand_position_pub.publish(output_msg)
        except Exception as e:
            self.get_logger().error(f'Failed to publish image: {e}')


def main(args=None):
    rclpy.init(args=args)
    node = HandTrackingNode()
    
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

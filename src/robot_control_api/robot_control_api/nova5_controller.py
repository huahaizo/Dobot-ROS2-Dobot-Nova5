#!/usr/bin/env python3
"""
Nova5 机器人控制 API
提供简洁的 Python 接口控制 Nova5 机器人

使用方法:
    from robot_control_api.nova5_controller import Nova5Controller
    
    controller = Nova5Controller()
    controller.connect()
    
    # 启用机器人
    controller.enable()
    
    # 关节运动
    controller.move_joint(j1=0, j2=0, j3=90, j4=0, j5=90, j6=0)
    
    # 笛卡尔运动
    controller.move_cartesian(x=300, y=0, z=200, rx=0, ry=0, rz=0)
    
    # 获取当前状态
    joints = controller.get_joint_angles()
    pose = controller.get_pose()
    
    controller.disconnect()
"""

import rclpy
from rclpy.node import Node
from rclpy.task import Future
from dobot_msgs_v3.srv import (
    EnableRobot, DisableRobot, MovJ, MovL, JointMovJ,
    GetPose, GetAngle, SpeedFactor, DO
)
from typing import List, Tuple, Optional
import time


class Nova5Controller:
    """
    Nova5 机器人控制器类
    
    提供简单易用的接口控制 Nova5 六轴机械臂
    """
    
    def __init__(self, node_name: str = "nova5_controller"):
        """
        初始化控制器
        
        Args:
            node_name: ROS2 节点名称
        """
        # 初始化 ROS2
        if not rclpy.ok():
            rclpy.init()
        
        self.node = Node(node_name)
        
        # 创建服务客户端
        self._clients = {
            'enable': self.node.create_client(EnableRobot, '/dobot_bringup_v3/srv/EnableRobot'),
            'disable': self.node.create_client(DisableRobot, '/dobot_bringup_v3/srv/DisableRobot'),
            'movj': self.node.create_client(MovJ, '/dobot_bringup_v3/srv/MovJ'),
            'movl': self.node.create_client(MovL, '/dobot_bringup_v3/srv/MovL'),
            'joint_movj': self.node.create_client(JointMovJ, '/dobot_bringup_v3/srv/JointMovJ'),
            'get_pose': self.node.create_client(GetPose, '/dobot_bringup_v3/srv/GetPose'),
            'get_angle': self.node.create_client(GetAngle, '/dobot_bringup_v3/srv/GetAngle'),
            'speed': self.node.create_client(SpeedFactor, '/dobot_bringup_v3/srv/SpeedFactor'),
            'do': self.node.create_client(DO, '/dobot_bringup_v3/srv/DO'),
        }
        
        self._connected = False
        self._speed_ratio = 20  # 默认速度 20%
    
    def connect(self, timeout: float = 5.0) -> bool:
        """
        连接到机器人驱动
        
        Args:
            timeout: 等待服务超时时间（秒）
            
        Returns:
            bool: 是否连接成功
        """
        print(f"正在连接到 Nova5 机器人...")
        
        start_time = time.time()
        for name, client in self._clients.items():
            if not client.wait_for_service(timeout_sec=timeout):
                print(f"服务 {name} 不可用")
                return False
            # 处理 ROS2 事件
            rclpy.spin_once(self.node, timeout_sec=0.1)
        
        self._connected = True
        print("连接成功！")
        return True
    
    def disconnect(self):
        """断开连接并清理资源"""
        if self.node:
            self.node.destroy_node()
        if rclpy.ok():
            rclpy.shutdown()
        self._connected = False
        print("已断开连接")
    
    def _call_service(self, client_name: str, request) -> Tuple[bool, any]:
        """
        调用服务
        
        Args:
            client_name: 客户端名称
            request: 请求消息
            
        Returns:
            Tuple[bool, any]: (是否成功, 结果或错误信息)
        """
        if not self._connected:
            return False, "未连接到机器人"
        
        client = self._clients[client_name]
        future = client.call_async(request)
        
        # 等待服务完成
        while not future.done():
            rclpy.spin_once(self.node, timeout_sec=0.01)
        
        try:
            result = future.result()
            if hasattr(result, 'res') and result.res == 0:
                return True, result
            else:
                error_code = getattr(result, 'res', 'unknown')
                return False, f"错误码: {error_code}"
        except Exception as e:
            return False, str(e)
    
    def enable(self, load: float = 0.0) -> bool:
        """
        启用机器人
        
        Args:
            load: 负载重量（kg）
            
        Returns:
            bool: 是否成功
        """
        request = EnableRobot.Request()
        request.load = load
        
        success, result = self._call_service('enable', request)
        if success:
            print(f"机器人已启用，负载: {load}kg")
            # 设置默认速度
            self.set_speed(self._speed_ratio)
        else:
            print(f"启用失败: {result}")
        return success
    
    def disable(self) -> bool:
        """
        关闭机器人使能
        
        Returns:
            bool: 是否成功
        """
        request = DisableRobot.Request()
        
        success, result = self._call_service('disable', request)
        if success:
            print("机器人使能已关闭")
        else:
            print(f"关闭使能失败: {result}")
        return success
    
    def set_speed(self, ratio: int) -> bool:
        """
        设置速度比例
        
        Args:
            ratio: 速度比例 1-100
            
        Returns:
            bool: 是否成功
        """
        if not 1 <= ratio <= 100:
            print("速度比例必须在 1-100 之间")
            return False
        
        request = SpeedFactor.Request()
        request.ratio = ratio
        
        success, result = self._call_service('speed', request)
        if success:
            self._speed_ratio = ratio
            print(f"速度设置为 {ratio}%")
        else:
            print(f"设置速度失败: {result}")
        return success
    
    def move_joint(self, j1: float, j2: float, j3: float, 
                   j4: float, j5: float, j6: float, 
                   wait: bool = True, timeout: float = 10.0) -> bool:
        """
        关节空间运动
        
        Args:
            j1-j6: 6 个关节角度（度）
            wait: 是否等待运动完成
            timeout: 等待超时时间（秒）
            
        Returns:
            bool: 是否成功
        """
        request = JointMovJ.Request()
        request.j1 = float(j1)
        request.j2 = float(j2)
        request.j3 = float(j3)
        request.j4 = float(j4)
        request.j5 = float(j5)
        request.j6 = float(j6)
        
        print(f"关节运动到: [{j1:.2f}, {j2:.2f}, {j3:.2f}, {j4:.2f}, {j5:.2f}, {j6:.2f}]")
        
        success, result = self._call_service('joint_movj', request)
        if success:
            print("关节运动指令已发送")
            if wait:
                return self._wait_for_motion(timeout)
        else:
            print(f"关节运动失败: {result}")
        return success
    
    def move_cartesian(self, x: float, y: float, z: float,
                       rx: float, ry: float, rz: float,
                       linear: bool = False, 
                       wait: bool = True, timeout: float = 10.0) -> bool:
        """
        笛卡尔空间运动
        
        Args:
            x, y, z: 位置（mm）
            rx, ry, rz: 姿态（度）
            linear: 是否直线运动（True=MoveL, False=MoveJ）
            wait: 是否等待运动完成
            timeout: 等待超时时间（秒）
            
        Returns:
            bool: 是否成功
        """
        if linear:
            request = MovL.Request()
            motion_type = "直线"
        else:
            request = MovJ.Request()
            motion_type = "关节"
        
        request.x = float(x)
        request.y = float(y)
        request.z = float(z)
        request.rx = float(rx)
        request.ry = float(ry)
        request.rz = float(rz)
        
        print(f"{motion_type}运动到: X={x:.2f}, Y={y:.2f}, Z={z:.2f}, "
              f"RX={rx:.2f}, RY={ry:.2f}, RZ={rz:.2f}")
        
        client_name = 'movl' if linear else 'movj'
        success, result = self._call_service(client_name, request)
        
        if success:
            print(f"{motion_type}运动指令已发送")
            if wait:
                return self._wait_for_motion(timeout)
        else:
            print(f"{motion_type}运动失败: {result}")
        return success
    
    def get_joint_angles(self) -> Optional[List[float]]:
        """
        获取当前关节角度
        
        Returns:
            List[float]: 6 个关节角度（度），失败返回 None
        """
        request = GetAngle.Request()
        
        success, result = self._call_service('get_angle', request)
        if success:
            # 解析角度字符串
            angle_str = result.angle.strip().strip('{}[]')
            angles = [float(a) for a in angle_str.split(',')]
            return angles
        else:
            print(f"获取关节角度失败: {result}")
            return None
    
    def get_pose(self) -> Optional[List[float]]:
        """
        获取当前位姿
        
        Returns:
            List[float]: [x, y, z, rx, ry, rz]，失败返回 None
        """
        request = GetPose.Request()
        request.user = 0
        request.tool = 0
        
        success, result = self._call_service('get_pose', request)
        if success:
            # 解析位姿字符串
            pose_str = result.pose.strip().strip('{}[]')
            pose = [float(p) for p in pose_str.split(',')]
            return pose
        else:
            print(f"获取位姿失败: {result}")
            return None
    
    def control_gripper(self, open: bool) -> bool:
        """
        控制夹爪
        
        Args:
            open: True=打开, False=关闭
            
        Returns:
            bool: 是否成功
        """
        request = DO.Request()
        request.index = 1  # 假设夹爪连接到 DO1
        request.status = 1 if open else 0
        
        action = "打开" if open else "关闭"
        print(f"{action}夹爪...")
        
        success, result = self._call_service('do', request)
        if success:
            print(f"夹爪已{action}")
        else:
            print(f"夹爪控制失败: {result}")
        return success
    
    def _wait_for_motion(self, timeout: float = 10.0) -> bool:
        """
        等待运动完成
        
        Args:
            timeout: 超时时间（秒）
            
        Returns:
            bool: 是否成功完成
        """
        print("等待运动完成...")
        start_time = time.time()
        
        # 获取初始位置
        initial_pose = self.get_pose()
        if initial_pose is None:
            print("无法获取初始位置")
            return False
        
        # 等待位置变化后稳定
        stable_count = 0
        last_pose = initial_pose
        
        while time.time() - start_time < timeout:
            time.sleep(0.1)
            
            # 处理 ROS2 事件
            rclpy.spin_once(self.node, timeout_sec=0.01)
            
            current_pose = self.get_pose()
            if current_pose is None:
                continue
            
            # 计算位置变化
            position_change = sum((a - b) ** 2 for a, b in zip(current_pose[:3], last_pose[:3])) ** 0.5
            
            if position_change < 0.1:  # 位置变化小于 0.1mm 认为稳定
                stable_count += 1
                if stable_count >= 10:  # 连续 10 次稳定
                    print("运动完成")
                    return True
            else:
                stable_count = 0
            
            last_pose = current_pose
        
        print("等待运动超时")
        return False
    
    def __enter__(self):
        """上下文管理器入口"""
        self.connect()
        return self
    
    def __exit__(self, exc_type, exc_val, exc_tb):
        """上下文管理器出口"""
        self.disconnect()

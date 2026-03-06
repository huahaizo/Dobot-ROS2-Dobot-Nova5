#!/usr/bin/env python3
"""
Nova5 逆运动学节点
使用 URDF 进行逆解算，接收手部位置控制机器人
按 'a' 键执行一次移动，更安全
"""

import rclpy
from rclpy.node import Node
from geometry_msgs.msg import Pose
from dobot_msgs_v3.srv import MovJ, MovL, EnableRobot, SpeedFactor, JointMovJ
import threading
import sys
import select
import tty
import termios
import math


class Nova5InverseKinematics(Node):
    def __init__(self):
        super().__init__('nova5_inverse_kinematics')
        
        self.declare_parameter('urdf_path', '/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_rviz/urdf/nova5_robot.urdf')
        self.declare_parameter('default_speed', 20)
        
        self.urdf_path = self.get_parameter('urdf_path').value
        self.default_speed = self.get_parameter('default_speed').value
        
        self.latest_pose = None
        self.pose_lock = threading.Lock()
        
        # 创建服务客户端
        self.movj_client = self.create_client(MovJ, '/dobot_bringup_v3/srv/MovJ')
        self.movl_client = self.create_client(MovL, '/dobot_bringup_v3/srv/MovL')
        self.joint_movj_client = self.create_client(JointMovJ, '/dobot_bringup_v3/srv/JointMovJ')
        self.enable_client = self.create_client(EnableRobot, '/dobot_bringup_v3/srv/EnableRobot')
        self.speed_client = self.create_client(SpeedFactor, '/dobot_bringup_v3/srv/SpeedFactor')
        
        # 订阅手部位置，但默认不接收，按 'b' 键才接收一次
        self.hand_pose_sub = None
        self.pending_pose = None
        
        self.get_logger().info('检查服务...')
        
        # 非阻塞检查服务
        if self.movj_client.wait_for_service(timeout_sec=2.0):
            self.get_logger().info('MovJ 服务已就绪')
        else:
            self.get_logger().warn('MovJ 服务未就绪，将在执行时重试')
        
        if self.joint_movj_client.wait_for_service(timeout_sec=2.0):
            self.get_logger().info('JointMovJ 服务已就绪')
        else:
            self.get_logger().warn('JointMovJ 服务未就绪，将在执行时重试')
        
        if self.enable_client.wait_for_service(timeout_sec=2.0):
            self.get_logger().info('EnableRobot 服务已就绪')
        else:
            self.get_logger().warn('EnableRobot 服务未就绪，将在执行时重试')
        
        self.get_logger().info('服务已就绪')
        self.get_logger().info('=' * 50)
        self.get_logger().info('按键控制模式已启用:')
        self.get_logger().info('  按 [b] 键 -> 接收一次手部位置')
        self.get_logger().info('  按 [a] 键 -> 固定姿态移动 (MovJ, 姿态: RX=-177.2214°, RY=-1.0013°, RZ=132.4267°)')
        self.get_logger().info('  按 [j] 键 -> 使用 MovJ 直接移动')
        self.get_logger().info('  按 [l] 键 -> 执行直线移动 (MovL)')
        self.get_logger().info('  按 [e] 键 -> 启用机器人')
        self.get_logger().info('  按 [q] 键 -> 退出程序')
        self.get_logger().info('=' * 50)
        
        self.set_speed(self.default_speed)
        
        # 初始化逆解算器
        self.init_ik_solver()
        
        self.running = True
        self.key_thread = threading.Thread(target=self.keyboard_listener, daemon=True)
        self.key_thread.start()
    
    def init_ik_solver(self):
        """初始化逆解算器"""
        try:
            from ikpy.chain import Chain
            from ikpy.link import URDFLink
            
            self.get_logger().info(f'加载 URDF: {self.urdf_path}')
            
            # 使用 ikpy 加载 URDF
            self.chain = Chain.from_urdf_file(
                self.urdf_path,
                base_elements=['base_link']
            )
            
            self.get_logger().info(f'逆解算器初始化成功')
            self.get_logger().info(f'关节数量: {len(self.chain.links)}')
            # 打印关节信息
            for i, link in enumerate(self.chain.links):
                self.get_logger().info(f'  Link {i}: {link.name}, type={link.joint_type}')
            self.ik_available = True
            
        except ImportError:
            self.get_logger().warn('ikpy 未安装，使用几何逆解算')
            self.get_logger().warn('安装命令: pip3 install ikpy')
            self.ik_available = False
            self.chain = None
        except Exception as e:
            self.get_logger().error(f'逆解算器初始化失败: {e}')
            self.ik_available = False
            self.chain = None
    
    def hand_pose_callback(self, msg):
        """处理手部位置消息 - 只存储一次"""
        self.pending_pose = msg
        
        # 取消订阅，只接收一次
        if self.hand_pose_sub is not None:
            self.destroy_subscription(self.hand_pose_sub)
            self.hand_pose_sub = None
            
        self.get_logger().info(
            f'接收到目标位置: x={msg.position.x:.3f}m, y={msg.position.y:.3f}m, z={msg.position.z:.3f}m | 按 [a] 键执行逆解算'
        )
    
    def service_callback(self, future):
        """处理服务响应"""
        try:
            result = future.result()
            if result and result.res == 0:
                self.get_logger().info('MovJ 移动成功')
            else:
                self.get_logger().error(f'移动失败: {result.res if result else "无响应"}')
        except Exception as e:
            self.get_logger().error(f'服务调用失败: {e}')
    
    def start_capture(self):
        """开始接收一次手部位置"""
        if self.hand_pose_sub is None:
            self.hand_pose_sub = self.create_subscription(
                Pose,
                '/hand_tracking/robot_pose',
                self.hand_pose_callback,
                10
            )
            self.get_logger().info('等待手部位置... 请把手放在相机前')
        else:
            self.get_logger().info('已经在接收中...')
    
    def keyboard_listener(self):
        """键盘监听线程"""
        while self.running:
            if select.select([sys.stdin], [], [], 0.1)[0]:
                key = sys.stdin.read(1)
                if key.lower() == 'b':
                    self.start_capture()
                elif key.lower() == 'a':
                    self.execute_movement_fixed_pose()
                elif key.lower() == 'j':
                    self.execute_movement(linear=False)
                elif key.lower() == 'l':
                    self.execute_movement(linear=True)
                elif key.lower() == 'e':
                    self.enable_robot()
                elif key.lower() == 'q':
                    self.get_logger().info('退出程序...')
                    self.running = False
                    break
    
    def calculate_ik(self, x, y, z, rx=-177.2214, ry=-1.0013, rz=132.4267):
        """
        使用 ikpy 进行逆解算
        以基准姿态为参考: RX=-177.2214°, RY=-1.0013°, RZ=132.4267°
        返回关节角度列表 [j1, j2, j3, j4, j5, j6] (度)
        """
        if not self.ik_available or self.chain is None:
            return None
        
        try:
            # 目标位置 (米)
            target_position = [x, y, z]
            
            # 目标姿态 (转换为旋转矩阵)
            # 计算旋转矩阵
            import numpy as np
            from ikpy.utils import geometry
            
            # 将欧拉角转换为旋转矩阵
            rx_rad = math.radians(rx)
            ry_rad = math.radians(ry)
            rz_rad = math.radians(rz)
            
            # 旋转矩阵
            rotation_matrix = geometry.rpy_matrix(rx_rad, ry_rad, rz_rad)
            
            # 使用当前关节角度作为初始猜测
            initial_joints = [0] * len(self.chain.links)
            
            # 逆解算（考虑位置和姿态）
            ik_solution = self.chain.inverse_kinematics(
                target_position,
                orientation=rotation_matrix,
                initial_position=initial_joints
            )
            
            # 提取关节角度 - 按关节名称顺序提取
            joint_names = ['joint1', 'joint2', 'joint3', 'joint4', 'joint5', 'joint6']
            joint_angles = []
            
            for joint_name in joint_names:
                # 在 chain 中找到对应的 link
                for i, link in enumerate(self.chain.links):
                    if link.name == joint_name and i < len(ik_solution):
                        joint_angles.append(math.degrees(ik_solution[i]))
                        break
            
            if len(joint_angles) == 6:
                self.get_logger().info(f'逆解算成功: {joint_angles}')
                return joint_angles
            else:
                self.get_logger().warn(f'关节数量不对: {len(joint_angles)}, 期望6个')
                return None
            
        except Exception as e:
            self.get_logger().error(f'逆解算失败: {e}')
            return None
    
    def calculate_geometric_ik(self, x, y, z):
        """
        几何法逆解算 (简化版)
        基于 Nova5 机器人结构的几何计算
        """
        # Nova5 机器人连杆长度 (从 URDF 估算，单位：米)
        L1 = 0.240  # 基座到关节2
        L2 = 0.400  # 关节2到关节3
        L3 = 0.330  # 关节3到关节4
        L4 = 0.135  # 关节4到关节5
        L5 = 0.120  # 关节5到关节6
        L6 = 0.088  # 关节6到末端
        
        # 计算关节1 (基座旋转)
        j1 = math.degrees(math.atan2(y, x))
        
        # 在 X-Y 平面的投影距离
        r = math.sqrt(x**2 + y**2)
        
        # 计算高度 (相对于关节2)
        h = z - L1
        
        # 到目标的距离
        d = math.sqrt(r**2 + h**2)
        
        # 简化计算：假设末端朝下 (RX=180)
        # 使用余弦定理计算关节2和关节3
        # 这里使用简化的几何模型
        
        # 关节2 (肩关节)
        cos_j2 = (L2**2 + d**2 - (L3+L4+L5+L6)**2) / (2 * L2 * d)
        cos_j2 = max(-1, min(1, cos_j2))  # 限制范围
        j2 = math.degrees(math.acos(cos_j2)) + math.degrees(math.atan2(h, r))
        
        # 关节3 (肘关节)
        cos_j3 = (L2**2 + (L3+L4+L5+L6)**2 - d**2) / (2 * L2 * (L3+L4+L5+L6))
        cos_j3 = max(-1, min(1, cos_j3))
        j3 = 180 - math.degrees(math.acos(cos_j3))
        
        # 关节4-6 保持默认值 (使末端朝下)
        j4 = 0
        j5 = 90
        j6 = 0
        
        joint_angles = [j1, j2-90, j3-90, j4, j5, j6]
        
        self.get_logger().info(f'几何逆解算: {joint_angles}')
        return joint_angles
    
    def execute_movement_fixed_pose(self):
        """使用固定姿态执行移动 (MovJ)"""
        if self.pending_pose is None:
            self.get_logger().warn('没有可用的目标位置，请先按 [b] 键接收手部位置')
            return
        target_pose = self.pending_pose
        
        # 目标位置 (米)
        x = target_pose.position.x
        y = target_pose.position.y
        z = target_pose.position.z
        
        # 固定姿态（基准值）
        rx = -177.2214
        ry = -1.0013
        rz = 132.4267
        
        self.get_logger().info(f'目标位置: X={x:.3f}m, Y={y:.3f}m, Z={z:.3f}m')
        self.get_logger().info(f'固定姿态: RX={rx:.4f}°, RY={ry:.4f}°, RZ={rz:.4f}°')
        
        # 转换为毫米
        x_mm = x * 1000.0
        y_mm = y * 1000.0
        z_mm = z * 1000.0
        
        # 调用 MovJ 服务
        if not self.movj_client.wait_for_service(timeout_sec=1.0):
            self.get_logger().error('MovJ 服务不可用')
            return
        
        request = MovJ.Request()
        request.x = float(x_mm)
        request.y = float(y_mm)
        request.z = float(z_mm)
        request.rx = float(rx)
        request.ry = float(ry)
        request.rz = float(rz)
        
        self.get_logger().info('执行 MovJ 移动...')
        future = self.movj_client.call_async(request)
        future.add_done_callback(self.service_callback)
    
    def execute_with_ik(self):
        """使用逆解算执行移动"""
        if self.pending_pose is None:
            self.get_logger().warn('没有可用的目标位置，请先按 [b] 键接收手部位置')
            return
        target_pose = self.pending_pose
        
        # 目标位置 (米)
        x = target_pose.position.x
        y = target_pose.position.y
        z = target_pose.position.z
        
        self.get_logger().info(f'目标位置: X={x:.3f}m, Y={y:.3f}m, Z={z:.3f}m')
        
        # 尝试使用 ikpy 逆解算
        if self.ik_available:
            joint_angles = self.calculate_ik(
                x, y, z,
                rx=-177.2214,  # 基准姿态
                ry=-1.0013,
                rz=132.4267
            )
        else:
            joint_angles = None
        
        # 如果 ikpy 失败，使用几何法
        if joint_angles is None:
            self.get_logger().info('使用几何法逆解算')
            joint_angles = self.calculate_geometric_ik(x, y, z)
        
        if joint_angles and len(joint_angles) >= 6:
            self.move_joints(joint_angles)
        else:
            self.get_logger().error('逆解算失败，无法执行移动')
    
    def move_joints(self, joint_angles):
        """使用 JointMovJ 控制关节"""
        if not self.joint_movj_client.wait_for_service(timeout_sec=1.0):
            self.get_logger().error('JointMovJ 服务不可用')
            return
        
        request = JointMovJ.Request()
        request.j1 = float(joint_angles[0])
        request.j2 = float(joint_angles[1])
        request.j3 = float(joint_angles[2])
        request.j4 = float(joint_angles[3])
        request.j5 = float(joint_angles[4])
        request.j6 = float(joint_angles[5])
        
        self.get_logger().info(
            f'关节运动 -> J1={request.j1:.1f}°, J2={request.j2:.1f}°, J3={request.j3:.1f}°, '
            f'J4={request.j4:.1f}°, J5={request.j5:.1f}°, J6={request.j6:.1f}°'
        )
        
        future = self.joint_movj_client.call_async(request)
        
        while not future.done():
            rclpy.spin_once(self, timeout_sec=0.01)
        
        try:
            result = future.result()
            if result.res == 0:
                self.get_logger().info('关节运动成功')
            else:
                self.get_logger().error(f'关节运动失败，错误码: {result.res}')
        except Exception as e:
            self.get_logger().error(f'服务调用失败: {e}')
    
    def enable_robot(self):
        """启用机器人"""
        if not self.enable_client.wait_for_service(timeout_sec=1.0):
            self.get_logger().error('EnableRobot 服务不可用')
            return False
        
        request = EnableRobot.Request()
        request.load = 0.0
        
        future = self.enable_client.call_async(request)
        
        while not future.done():
            rclpy.spin_once(self, timeout_sec=0.01)
        
        try:
            result = future.result()
            if result.res == 0:
                self.get_logger().info('机器人已启用')
                return True
            else:
                self.get_logger().error(f'启用失败，错误码: {result.res}')
                return False
        except Exception as e:
            self.get_logger().error(f'服务调用失败: {e}')
            return False
    
    def set_speed(self, ratio: int):
        """设置速度"""
        if not self.speed_client.wait_for_service(timeout_sec=1.0):
            self.get_logger().warn('SpeedFactor 服务不可用')
            return False
        
        request = SpeedFactor.Request()
        request.ratio = ratio
        
        future = self.speed_client.call_async(request)
        
        while not future.done():
            rclpy.spin_once(self, timeout_sec=0.01)
        
        try:
            result = future.result()
            if result.res == 0:
                self.get_logger().info(f'速度设置为 {ratio}%')
                return True
            else:
                self.get_logger().warn(f'设置速度失败，错误码: {result.res}')
                return False
        except Exception as e:
            self.get_logger().warn(f'设置速度失败: {e}')
            return False
    
    def execute_movement(self, linear=False):
        """使用笛卡尔坐标执行移动 (MovJ/MovL)"""
        if self.pending_pose is None:
            self.get_logger().warn('没有可用的目标位置，请先按 [b] 键接收手部位置')
            return
        target_pose = self.pending_pose
        
        # hand_tracking_3d_node 发布的是米，MovJ 需要毫米
        x = target_pose.position.x * 1000.0
        y = target_pose.position.y * 1000.0
        z = target_pose.position.z * 1000.0
        
        # 根据目标位置计算姿态
        rx, ry, rz = self.calculate_orientation(x, y, z)
        
        motion_type = "直线" if linear else "关节"
        self.get_logger().info(
            f'执行{motion_type}移动 -> X={x:.1f}mm, Y={y:.1f}mm, Z={z:.1f}mm, '
            f'RX={rx:.1f}°, RY={ry:.1f}°, RZ={rz:.1f}°'
        )
        
        if linear:
            if not self.movl_client.wait_for_service(timeout_sec=1.0):
                self.get_logger().error('MovL 服务不可用')
                return
            request = MovL.Request()
        else:
            if not self.movj_client.wait_for_service(timeout_sec=1.0):
                self.get_logger().error('MovJ 服务不可用')
                return
            request = MovJ.Request()
        
        request.x = float(x)
        request.y = float(y)
        request.z = float(z)
        request.rx = float(rx)
        request.ry = float(ry)
        request.rz = float(rz)
        
        client = self.movl_client if linear else self.movj_client
        future = client.call_async(request)
        
        while not future.done():
            rclpy.spin_once(self, timeout_sec=0.01)
        
        try:
            result = future.result()
            if result.res == 0:
                self.get_logger().info(f'{motion_type}移动成功')
            else:
                self.get_logger().error(f'{motion_type}移动失败，错误码: {result.res}')
        except Exception as e:
            self.get_logger().error(f'服务调用失败: {e}')
    
    def calculate_orientation(self, x, y, z):
        """根据目标位置计算末端姿态"""
        distance_xy = math.sqrt(x**2 + y**2)
        
        rz = math.degrees(math.atan2(y, x))
        
        if distance_xy > 0:
            rx = 180.0 - math.degrees(math.atan2(distance_xy, z)) * 0.3
        else:
            rx = 180.0
        
        ry = 0.0
        
        rx = max(90.0, min(180.0, rx))
        ry = max(-45.0, min(45.0, ry))
        rz = rz % 360.0
        
        return rx, ry, rz
    
    def destroy_node(self):
        """清理资源"""
        self.running = False
        if self.key_thread.is_alive():
            self.key_thread.join(timeout=1.0)
        super().destroy_node()


def main(args=None):
    rclpy.init(args=args)
    
    old_settings = termios.tcgetattr(sys.stdin)
    
    try:
        tty.setraw(sys.stdin.fileno())
        
        node = Nova5InverseKinematics()
        rclpy.spin(node)
        
    except KeyboardInterrupt:
        pass
    except Exception as e:
        print(f'启动失败: {e}')
    finally:
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, old_settings)
        if 'node' in locals():
            node.destroy_node()
        rclpy.shutdown()


if __name__ == '__main__':
    main()

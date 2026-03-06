#!/usr/bin/env python3
"""
Qt 机器人控制程序 - 实时显示和控制 Nova5 机器人
"""

import sys
import math
import rclpy
from rclpy.node import Node
from rclpy.qos import QoSProfile
from sensor_msgs.msg import JointState
from dobot_msgs_v3.srv import (
    EnableRobot, DisableRobot, MovJ, MovL, JointMovJ,
    GetPose, GetAngle, SpeedFactor, DO
)
from PyQt5.QtWidgets import (
    QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QLabel, QLineEdit, QPushButton, QSlider, QGroupBox, QGridLayout,
    QTextEdit, QMessageBox
)
from PyQt5.QtCore import Qt, QTimer, pyqtSignal
from PyQt5.QtGui import QFont


class ROS2Node(Node):
    """ROS2 节点类"""
    
    def __init__(self):
        super().__init__('qt_robot_controller')
        
        # 创建服务客户端
        self.enable_client = self.create_client(
            EnableRobot, '/dobot_bringup_v3/srv/EnableRobot'
        )
        self.disable_client = self.create_client(
            DisableRobot, '/dobot_bringup_v3/srv/DisableRobot'
        )
        self.movj_client = self.create_client(
            MovJ, '/dobot_bringup_v3/srv/MovJ'
        )
        self.movl_client = self.create_client(
            MovL, '/dobot_bringup_v3/srv/MovL'
        )
        self.joint_movj_client = self.create_client(
            JointMovJ, '/dobot_bringup_v3/srv/JointMovJ'
        )
        self.get_pose_client = self.create_client(
            GetPose, '/dobot_bringup_v3/srv/GetPose'
        )
        self.get_angle_client = self.create_client(
            GetAngle, '/dobot_bringup_v3/srv/GetAngle'
        )
        self.speed_client = self.create_client(
            SpeedFactor, '/dobot_bringup_v3/srv/SpeedFactor'
        )
        self.do_client = self.create_client(
            DO, '/dobot_bringup_v3/srv/DO'
        )
        
        # 订阅关节状态
        self.joint_subscription = self.create_subscription(
            JointState,
            '/joint_states',
            self.joint_callback,
            QoSProfile(depth=10)
        )
        
        self.current_joints = [0.0] * 6
        self.joint_names = ["joint1", "joint2", "joint3", "joint4", "joint5", "joint6"]
    
    def joint_callback(self, msg):
        """关节状态回调"""
        if len(msg.position) >= 6:
            self.current_joints = list(msg.position[:6])
    
    def get_current_joints(self):
        """获取当前关节角度"""
        return self.current_joints
    
    def enable_robot(self, load=0.0):
        """启用机器人"""
        if not self.enable_client.wait_for_service(timeout_sec=1.0):
            return False, "服务不可用"

        request = EnableRobot.Request()
        request.load = load
        future = self.enable_client.call_async(request)
        rclpy.spin_until_future_complete(self, future)

        result = future.result()
        if result and result.res == 0:
            return True, "机器人已启用"
        return False, f"启用失败: {result.res if result else '无响应'}"

    def disable_robot(self):
        """关闭机器人使能"""
        if not self.disable_client.wait_for_service(timeout_sec=1.0):
            return False, "服务不可用"

        request = DisableRobot.Request()
        future = self.disable_client.call_async(request)
        rclpy.spin_until_future_complete(self, future)

        result = future.result()
        if result and result.res == 0:
            return True, "机器人使能已关闭"
        return False, f"关闭失败: {result.res if result else '无响应'}"
    
    def move_joint(self, j1, j2, j3, j4, j5, j6):
        """关节运动"""
        if not self.joint_movj_client.wait_for_service(timeout_sec=1.0):
            return False, "服务不可用"
        
        request = JointMovJ.Request()
        request.j1, request.j2, request.j3 = float(j1), float(j2), float(j3)
        request.j4, request.j5, request.j6 = float(j4), float(j5), float(j6)
        
        future = self.joint_movj_client.call_async(request)
        rclpy.spin_until_future_complete(self, future)
        
        result = future.result()
        if result and result.res == 0:
            return True, "运动指令已发送"
        return False, f"运动失败: {result.res if result else '无响应'}"
    
    def move_cartesian(self, x, y, z, rx, ry, rz, linear=False):
        """笛卡尔空间运动"""
        client = self.movl_client if linear else self.movj_client
        
        if not client.wait_for_service(timeout_sec=1.0):
            return False, "服务不可用"
        
        request = MovL.Request() if linear else MovJ.Request()
        request.x, request.y, request.z = float(x), float(y), float(z)
        request.rx, request.ry, request.rz = float(rx), float(ry), float(rz)
        
        future = client.call_async(request)
        rclpy.spin_until_future_complete(self, future)
        
        result = future.result()
        if result and result.res == 0:
            return True, "运动指令已发送"
        return False, f"运动失败: {result.res if result else '无响应'}"
    
    def get_real_joints(self):
        """从真实机器人获取关节角度"""
        if not self.get_angle_client.wait_for_service(timeout_sec=1.0):
            return None, "服务不可用"
        
        request = GetAngle.Request()
        future = self.get_angle_client.call_async(request)
        rclpy.spin_until_future_complete(self, future)
        
        result = future.result()
        if result and result.res == 0:
            # 清理字符串中的特殊字符
            angle_str = result.angle.strip().strip('{}[]')
            angles = list(map(float, angle_str.split(',')))
            return angles, "获取成功"
        return None, f"获取失败: {result.res if result else '无响应'}"
    
    def get_real_pose(self):
        """从真实机器人获取位姿"""
        if not self.get_pose_client.wait_for_service(timeout_sec=1.0):
            return None, "服务不可用"
        
        request = GetPose.Request()
        request.user = 0
        request.tool = 0
        future = self.get_pose_client.call_async(request)
        rclpy.spin_until_future_complete(self, future)
        
        result = future.result()
        if result and result.res == 0:
            # 清理字符串中的特殊字符
            pose_str = result.pose.strip().strip('{}[]')
            pose = list(map(float, pose_str.split(',')))
            return pose, "获取成功"
        return None, f"获取失败: {result.res if result else '无响应'}"
    
    def set_speed(self, ratio):
        """设置速度"""
        if not self.speed_client.wait_for_service(timeout_sec=1.0):
            return False, "服务不可用"
        
        request = SpeedFactor.Request()
        request.ratio = int(ratio)
        future = self.speed_client.call_async(request)
        rclpy.spin_until_future_complete(self, future)
        
        result = future.result()
        if result and result.res == 0:
            return True, f"速度设置为 {ratio}%"
        return False, f"设置失败: {result.res if result else '无响应'}"


class MainWindow(QMainWindow):
    """主窗口"""
    
    joint_updated = pyqtSignal(list)
    log_message = pyqtSignal(str)
    
    def __init__(self, ros_node):
        super().__init__()
        self.ros_node = ros_node
        self.init_ui()
        self.init_timer()
    
    def init_ui(self):
        """初始化界面"""
        self.setWindowTitle('Nova5 机器人控制程序')
        self.setGeometry(100, 100, 1200, 800)
        
        # 中央部件
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        main_layout = QHBoxLayout(central_widget)
        
        # 左侧面板 - 状态显示
        left_panel = self.create_status_panel()
        main_layout.addWidget(left_panel, 1)
        
        # 右侧面板 - 控制
        right_panel = self.create_control_panel()
        main_layout.addWidget(right_panel, 2)
    
    def create_status_panel(self):
        """创建状态显示面板"""
        panel = QGroupBox("机器人状态")
        layout = QVBoxLayout()
        
        # 当前关节角度显示
        joints_group = QGroupBox("当前关节角度 (度)")
        joints_layout = QGridLayout()
        
        self.joint_labels = []
        self.joint_values = []
        
        for i in range(6):
            label = QLabel(f"Joint {i+1}:")
            value_label = QLabel("0.00°")
            value_label.setFont(QFont('Arial', 12, QFont.Bold))
            value_label.setStyleSheet("color: blue;")
            
            joints_layout.addWidget(label, i, 0)
            joints_layout.addWidget(value_label, i, 1)
            
            self.joint_labels.append(label)
            self.joint_values.append(value_label)
        
        joints_group.setLayout(joints_layout)
        layout.addWidget(joints_group)
        
        # 当前位姿显示
        pose_group = QGroupBox("当前位姿 (mm, 度)")
        pose_layout = QGridLayout()
        
        pose_names = ['X:', 'Y:', 'Z:', 'RX:', 'RY:', 'RZ:']
        self.pose_values = []
        
        for i, name in enumerate(pose_names):
            label = QLabel(name)
            value_label = QLabel("0.00")
            value_label.setFont(QFont('Arial', 10, QFont.Bold))
            value_label.setStyleSheet("color: green;")
            
            pose_layout.addWidget(label, i, 0)
            pose_layout.addWidget(value_label, i, 1)
            
            self.pose_values.append(value_label)
        
        pose_group.setLayout(pose_layout)
        layout.addWidget(pose_group)
        
        # 日志显示
        log_group = QGroupBox("操作日志")
        log_layout = QVBoxLayout()
        
        self.log_text = QTextEdit()
        self.log_text.setReadOnly(True)
        self.log_text.setMaximumHeight(200)
        log_layout.addWidget(self.log_text)
        
        log_group.setLayout(log_layout)
        layout.addWidget(log_group)
        
        panel.setLayout(layout)
        return panel
    
    def create_control_panel(self):
        """创建控制面板"""
        panel = QGroupBox("控制面板")
        layout = QVBoxLayout()
        
        # 系统控制
        system_group = QGroupBox("系统控制")
        system_layout = QHBoxLayout()
        
        self.enable_btn = QPushButton("启用机器人")
        self.enable_btn.clicked.connect(self.enable_robot)
        system_layout.addWidget(self.enable_btn)

        self.disable_btn = QPushButton("关闭使能")
        self.disable_btn.clicked.connect(self.disable_robot)
        system_layout.addWidget(self.disable_btn)

        self.sync_btn = QPushButton("同步真实状态")
        self.sync_btn.clicked.connect(self.sync_real_state)
        system_layout.addWidget(self.sync_btn)

        self.get_pose_btn = QPushButton("获取位姿")
        self.get_pose_btn.clicked.connect(self.get_real_pose)
        system_layout.addWidget(self.get_pose_btn)
        
        system_group.setLayout(system_layout)
        layout.addWidget(system_group)
        
        # 速度控制
        speed_group = QGroupBox("速度控制")
        speed_layout = QHBoxLayout()
        
        speed_layout.addWidget(QLabel("速度比例:"))
        self.speed_slider = QSlider(Qt.Horizontal)
        self.speed_slider.setRange(1, 100)
        self.speed_slider.setValue(20)
        self.speed_slider.valueChanged.connect(self.speed_changed)
        speed_layout.addWidget(self.speed_slider)
        
        self.speed_label = QLabel("20%")
        speed_layout.addWidget(self.speed_label)
        
        self.set_speed_btn = QPushButton("设置速度")
        self.set_speed_btn.clicked.connect(self.set_speed)
        speed_layout.addWidget(self.set_speed_btn)
        
        speed_group.setLayout(speed_layout)
        layout.addWidget(speed_group)
        
        # 关节控制
        joints_control_group = QGroupBox("关节控制")
        joints_control_layout = QGridLayout()
        
        self.joint_inputs = []
        for i in range(6):
            joints_control_layout.addWidget(QLabel(f"Joint {i+1}:"), i, 0)
            
            input_field = QLineEdit("0.0")
            input_field.setMaximumWidth(100)
            joints_control_layout.addWidget(input_field, i, 1)
            self.joint_inputs.append(input_field)
            
            # 滑块
            slider = QSlider(Qt.Horizontal)
            slider.setRange(-180, 180)
            slider.setValue(0)
            # 使用 sliderReleased 事件，释放滑块时发送指令
            slider.sliderReleased.connect(lambda idx=i: self.slider_released(idx))
            # 值改变时更新输入框
            slider.valueChanged.connect(lambda val, idx=i: self.slider_changed(val, idx))
            joints_control_layout.addWidget(slider, i, 2)

            # 保存滑块引用
            if not hasattr(self, 'joint_sliders'):
                self.joint_sliders = []
            self.joint_sliders.append(slider)

        # 实时控制开关
        self.realtime_control_checkbox = QPushButton("实时控制: 关闭")
        self.realtime_control_checkbox.setCheckable(True)
        self.realtime_control_checkbox.clicked.connect(self.toggle_realtime_control)
        joints_control_layout.addWidget(self.realtime_control_checkbox, 6, 0, 1, 3)
        
        joints_control_group.setLayout(joints_control_layout)
        layout.addWidget(joints_control_group)
        
        # 笛卡尔空间控制
        cartesian_group = QGroupBox("笛卡尔空间控制")
        cartesian_layout = QGridLayout()
        
        cartesian_names = ['X:', 'Y:', 'Z:', 'RX:', 'RY:', 'RZ:']
        self.cartesian_inputs = []
        
        for i, name in enumerate(cartesian_names):
            cartesian_layout.addWidget(QLabel(name), i, 0)
            
            input_field = QLineEdit("0.0")
            input_field.setMaximumWidth(100)
            cartesian_layout.addWidget(input_field, i, 1)
            self.cartesian_inputs.append(input_field)
        
        self.movej_btn = QPushButton("MoveJ (关节)")
        self.movej_btn.clicked.connect(lambda: self.move_cartesian(False))
        cartesian_layout.addWidget(self.movej_btn, 6, 0)
        
        self.movel_btn = QPushButton("MoveL (直线)")
        self.movel_btn.clicked.connect(lambda: self.move_cartesian(True))
        cartesian_layout.addWidget(self.movel_btn, 6, 1)
        
        cartesian_group.setLayout(cartesian_layout)
        layout.addWidget(cartesian_group)
        
        # 夹爪控制
        gripper_group = QGroupBox("夹爪控制")
        gripper_layout = QHBoxLayout()
        
        self.gripper_open_btn = QPushButton("打开夹爪")
        self.gripper_open_btn.clicked.connect(lambda: self.control_gripper(True))
        gripper_layout.addWidget(self.gripper_open_btn)
        
        self.gripper_close_btn = QPushButton("关闭夹爪")
        self.gripper_close_btn.clicked.connect(lambda: self.control_gripper(False))
        gripper_layout.addWidget(self.gripper_close_btn)
        
        gripper_group.setLayout(gripper_layout)
        layout.addWidget(gripper_group)
        
        # 预设位置
        preset_group = QGroupBox("预设位置")
        preset_layout = QHBoxLayout()
        
        self.home_btn = QPushButton("Home (原点)")
        self.home_btn.clicked.connect(self.go_home)
        preset_layout.addWidget(self.home_btn)
        
        self.safe_pos_btn = QPushButton("安全位置")
        self.safe_pos_btn.clicked.connect(self.go_safe_position)
        preset_layout.addWidget(self.safe_pos_btn)
        
        preset_group.setLayout(preset_layout)
        layout.addWidget(preset_group)
        
        layout.addStretch()
        panel.setLayout(layout)
        return panel
    
    def init_timer(self):
        """初始化定时器"""
        # ROS2 处理定时器
        self.ros_timer = QTimer()
        self.ros_timer.timeout.connect(self.spin_ros)
        self.ros_timer.start(10)  # 10ms
        
        # 界面更新定时器
        self.ui_timer = QTimer()
        self.ui_timer.timeout.connect(self.update_ui)
        self.ui_timer.start(100)  # 100ms
        
        # 信号连接
        self.joint_updated.connect(self.on_joint_updated)
        self.log_message.connect(self.on_log_message)
    
    def spin_ros(self):
        """处理 ROS2 事件"""
        rclpy.spin_once(self.ros_node, timeout_sec=0)
    
    def update_ui(self):
        """更新界面"""
        joints = self.ros_node.get_current_joints()
        if joints:
            self.joint_updated.emit(joints)
    
    def on_joint_updated(self, joints):
        """关节更新回调 - 将弧度转换为度显示"""
        for i, value in enumerate(joints):
            degrees = math.degrees(value)
            self.joint_values[i].setText(f"{degrees:.2f}°")
    
    def on_log_message(self, message):
        """日志消息回调"""
        self.log_text.append(message)
    
    def log(self, message):
        """添加日志"""
        self.log_message.emit(message)
    
    # ===== 控制功能 =====
    
    def enable_robot(self):
        """启用机器人"""
        success, msg = self.ros_node.enable_robot()
        self.log(f"[启用机器人] {msg}")
        if success:
            QMessageBox.information(self, "成功", msg)
        else:
            QMessageBox.warning(self, "失败", msg)

    def disable_robot(self):
        """关闭机器人使能"""
        success, msg = self.ros_node.disable_robot()
        self.log(f"[关闭使能] {msg}")
        if success:
            QMessageBox.information(self, "成功", msg)
        else:
            QMessageBox.warning(self, "失败", msg)

    def sync_real_state(self):
        """同步真实机器人状态"""
        joints, msg = self.ros_node.get_real_joints()
        self.log(f"[同步状态] {msg}")

        if joints:
            self.log(f"真实关节角度: {[f'{j:.2f}' for j in joints]}")

            # 更新左侧关节角度显示
            for i, joint in enumerate(joints):
                self.joint_values[i].setText(f"{joint:.2f}°")

            # 更新输入框
            for i, joint in enumerate(joints):
                self.joint_inputs[i].setText(f"{joint:.2f}")

            # 更新滑块位置
            for i, joint in enumerate(joints):
                # 限制滑块范围在 -180 到 180 之间
                slider_value = max(-180, min(180, int(joint)))
                self.joint_sliders[i].setValue(slider_value)

            QMessageBox.information(self, "同步成功", f"关节角度: {joints}")
        else:
            QMessageBox.warning(self, "同步失败", msg)
    
    def get_real_pose(self):
        """获取真实位姿"""
        pose, msg = self.ros_node.get_real_pose()
        self.log(f"[获取位姿] {msg}")
        
        if pose:
            self.log(f"当前位姿: X={pose[0]:.2f}, Y={pose[1]:.2f}, Z={pose[2]:.2f}, "
                    f"RX={pose[3]:.2f}, RY={pose[4]:.2f}, RZ={pose[5]:.2f}")
            # 更新位姿显示
            for i, value in enumerate(pose):
                self.pose_values[i].setText(f"{value:.2f}")
            # 更新输入框
            for i, value in enumerate(pose):
                self.cartesian_inputs[i].setText(f"{value:.2f}")
            QMessageBox.information(self, "位姿", f"X={pose[0]:.2f}, Y={pose[1]:.2f}, Z={pose[2]:.2f}")
        else:
            QMessageBox.warning(self, "获取失败", msg)
    
    def speed_changed(self, value):
        """速度滑块改变"""
        self.speed_label.setText(f"{value}%")
    
    def set_speed(self):
        """设置速度"""
        ratio = self.speed_slider.value()
        success, msg = self.ros_node.set_speed(ratio)
        self.log(f"[设置速度] {msg}")
        QMessageBox.information(self, "速度", msg) if success else QMessageBox.warning(self, "失败", msg)
    
    def slider_changed(self, value, index):
        """关节滑块改变 - 更新输入框"""
        self.joint_inputs[index].setText(str(value))

    def slider_released(self, index):
        """滑块释放 - 发送运动指令"""
        if hasattr(self, 'realtime_control_enabled') and self.realtime_control_enabled:
            self.send_joint_command()

    def toggle_realtime_control(self):
        """切换实时控制模式"""
        self.realtime_control_enabled = self.realtime_control_checkbox.isChecked()
        if self.realtime_control_enabled:
            self.realtime_control_checkbox.setText("实时控制: 开启")
            self.log("[实时控制] 已开启 - 拖动滑块释放后将自动发送指令")
        else:
            self.realtime_control_checkbox.setText("实时控制: 关闭")
            self.log("[实时控制] 已关闭")

    def send_joint_command(self):
        """发送关节运动指令"""
        try:
            joints = [float(input_field.text()) for input_field in self.joint_inputs]
            self.log(f"[实时控制] 目标角度: {[f'{j:.2f}' for j in joints]}")

            success, msg = self.ros_node.move_joint(*joints)
            if not success:
                self.log(f"[实时控制] 失败: {msg}")
        except ValueError:
            self.log("[实时控制] 错误: 无效的角度值")

    def move_joint(self):
        """执行关节运动（手动按钮）"""
        try:
            joints = [float(input_field.text()) for input_field in self.joint_inputs]
            self.log(f"[关节运动] 目标: {[f'{j:.2f}' for j in joints]}")

            success, msg = self.ros_node.move_joint(*joints)
            self.log(f"[关节运动] {msg}")

            if success:
                QMessageBox.information(self, "成功", msg)
            else:
                QMessageBox.warning(self, "失败", msg)
        except ValueError:
            QMessageBox.warning(self, "错误", "请输入有效的数字")
    
    def move_cartesian(self, linear):
        """笛卡尔空间运动"""
        try:
            values = [float(input_field.text()) for input_field in self.cartesian_inputs]
            x, y, z, rx, ry, rz = values
            
            mode = "MoveL" if linear else "MoveJ"
            self.log(f"[{mode}] 目标: X={x}, Y={y}, Z={z}, RX={rx}, RY={ry}, RZ={rz}")
            
            success, msg = self.ros_node.move_cartesian(x, y, z, rx, ry, rz, linear)
            self.log(f"[{mode}] {msg}")
            
            if success:
                QMessageBox.information(self, "成功", msg)
            else:
                QMessageBox.warning(self, "失败", msg)
        except ValueError:
            QMessageBox.warning(self, "错误", "请输入有效的数字")
    
    def control_gripper(self, open):
        """控制夹爪"""
        action = "打开" if open else "关闭"
        self.log(f"[夹爪控制] {action}夹爪")
        # 这里需要实现 DO 控制
        QMessageBox.information(self, "夹爪", f"{action}夹爪指令已发送")
    
    def go_home(self):
        """回到原点"""
        self.log("[预设位置] 回到原点")
        for input_field in self.joint_inputs:
            input_field.setText("0.0")
        self.move_joint()
    
    def go_safe_position(self):
        """去安全位置"""
        self.log("[预设位置] 去安全位置")
        safe_joints = [0.0, 0.0, 90.0, 0.0, 90.0, 0.0]
        for i, value in enumerate(safe_joints):
            self.joint_inputs[i].setText(str(value))
        self.move_joint()


def main():
    # 初始化 ROS2
    rclpy.init()
    ros_node = ROS2Node()
    
    # 初始化 Qt
    app = QApplication(sys.argv)
    window = MainWindow(ros_node)
    window.show()
    
    # 运行
    try:
        sys.exit(app.exec_())
    finally:
        ros_node.destroy_node()
        rclpy.shutdown()


if __name__ == '__main__':
    main()

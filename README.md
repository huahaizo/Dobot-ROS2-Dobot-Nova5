# Dobot Nova5 机器人控制系统

## 项目简介

本项目基于 Dobot 官方 ROS2 软件开发套件，为 Dobot Nova5 六轴机械臂​开发了一些案例程序：集手势跟随控制、Qt 图形界面​ 与 Python API​

## 前置准备

**重要：** 在使用本项目前，请先按照官方指南完成系统设置和环境配置：

1. **系统要求**：
   - Ubuntu 22.04 LTS
   - ROS2 Humble Hawksbill

2. **网络配置**：
   - 有线连接：将电脑设置为与控制器（IP: 192.168.5.1）同一网段
   - 无线连接：控制器 IP 为 192.168.1.6

3. **官方 SDK 安装**：
   请参考官方文档完成基础设置：
   - 文件路径：`dobot_ws/src/DOBOT_6Axis_ROS2_V3/README.md`
   - 主要步骤：
     - 网络配置和连接测试
     - 源码编译和环境变量设置
     - 机械臂型号配置
     - 驱动服务启动

4. **必要依赖**：
   - MediaPipe（手势跟踪）：`pip3 install mediapipe`
   - PyQt5（Qt 界面）：`pip3 install PyQt5`
   - OpenCV：`pip3 install opencv-python`
   - cv_bridge：`sudo apt install ros-humble-cv-bridge`

完成上述准备工作后，再继续本项目的操作。

---

## 项目概述

本项目包含多个 ROS2 功能包，用于控制 Dobot Nova5 六轴机械臂，支持手势跟踪、Qt 界面控制和 API 控制等功能。

---

## 目录结构

```
dobot_ws/
├── src/
│   ├── hand_tracking/        # 手势跟踪功能包
│   ├── qt_robot_control/     # Qt 机器人控制界面
│   ├── robot_control_api/    # 机器人控制 API
│   └── DOBOT_6Axis_ROS2_V3/  # Dobot 官方驱动包
└── README.md
```

---

## 1. hand_tracking 功能包

**路径**: `/home/huahai/dobot_ws/src/hand_tracking`

### 功能说明

手势跟踪功能包，使用 MediaPipe 进行手部检测，支持将手势位置转换为机器人坐标。

### 包含节点

#### 1.1 hand_tracking_node
- **功能**: 基础手势跟踪节点，检测手部位置并在图像上标注
- **订阅话题**: `/camera/camera/color/image_raw` (相机图像)
- **发布话题**: `/hand_tracking/hand_position_image` (带标注的图像)
- **参数**:
  - `camera_topic`: 相机话题 (默认: `/camera/camera/color/image_raw`)
  - `show_image`: 是否显示图像窗口 (默认: `True`)
  - `min_detection_confidence`: 最小检测置信度 (默认: `0.7`)

#### 1.2 hand_tracking_3d_node
- **功能**: 3D 手势跟踪节点，将像素坐标转换为机器人坐标
- **订阅话题**:
  - `/camera/camera/color/image_raw` (相机图像)
- **发布话题**:
  - `/hand_tracking/hand_position_image` (带标注的图像)
  - `/hand_tracking/robot_pose` (机器人目标位姿)
- **参数**:
  - `camera_topic`: 相机话题
  - `show_image`: 是否显示图像
  - `target_z`: 目标 Z 坐标 (默认: `500.0`)

#### 1.3 hand_tracking_robot_node
- **功能**: 完整的手势控制机器人节点，支持深度相机
- **订阅话题**:
  - `/camera/camera/color/image_raw` (彩色图像)
  - `/camera/camera/depth/image_rect_raw` (深度图像)
- **发布话题**:
  - `/hand_tracking/hand_position_image`
  - `/hand_tracking/robot_pose`
- **参数**:
  - `target_z`: 目标 Z 坐标 (默认: `200.0`)
  - `camera_mount_x/y/z`: 相机安装位置
  - `camera_mount_roll/pitch/yaw`: 相机安装角度

#### 1.4 nova5_ik_node
- **功能**: Nova5 逆运动学解算节点，使用 MoveIt 进行运动规划
- **订阅话题**: `/hand_tracking/robot_pose` (目标位姿)
- **发布话题**: `/joint_states` (关节状态)
- **服务客户端**: `MovJ` (关节运动服务)
- **参数**:
  - `group_name`: MoveIt 规划组名称 (默认: `nova5_group`)
  - `robot_ip`: 机器人 IP (默认: `192.168.5.1`)
  - `robot_port`: 机器人端口 (默认: `29999`)

### 启动方法

```bash
# 首先启动 Dobot 机器人驱动
ros2 launch dobot_bringup_v3 dobot_bringup_ros2.launch.py

# 启动基础手势跟踪
ros2 run hand_tracking hand_tracking_node

# 启动 3D 手势跟踪
ros2 run hand_tracking hand_tracking_3d_node

# 启动完整手势控制（带深度）
ros2 run hand_tracking hand_tracking_robot_node

# 启动逆运动学节点
ros2 run hand_tracking nova5_ik_node
```

---

## 2. qt_robot_control 功能包

**路径**: `/home/huahai/dobot_ws/src/qt_robot_control`

### 功能说明

基于 PyQt5 的机器人控制界面，提供图形化界面实时显示和控制 Nova5 机器人。

### 包含节点

#### 2.1 robot_controller (qt_robot_control 模块)
- **功能**: Qt 机器人控制界面，支持：
  - 机器人使能/禁用
  - 关节角度控制
  - 笛卡尔坐标控制
  - 速度调节
  - 实时状态显示
  - I/O 控制
- **订阅话题**: `/joint_states` (关节状态)
- **服务客户端**:
  - `/dobot_bringup_v3/srv/EnableRobot` (启用机器人)
  - `/dobot_bringup_v3/srv/DisableRobot` (禁用机器人)
  - `/dobot_bringup_v3/srv/MovJ` (关节运动)
  - `/dobot_bringup_v3/srv/MovL` (直线运动)
  - `/dobot_bringup_v3/srv/JointMovJ` (关节运动)
  - `/dobot_bringup_v3/srv/GetPose` (获取位姿)
  - `/dobot_bringup_v3/srv/GetAngle` (获取关节角度)
  - `/dobot_bringup_v3/srv/SpeedFactor` (速度设置)
  - `/dobot_bringup_v3/srv/DO` (数字输出)

### 启动方法

```bash
# 首先启动 Dobot 机器人驱动
ros2 launch dobot_bringup_v3 dobot_bringup_ros2.launch.py

# 启动 Qt 控制界面
ros2 run qt_robot_control robot_controller

# 或者直接运行 Python 文件
cd /home/huahai/dobot_ws/src/qt_robot_control
python3 qt_robot_control/robot_controller.py
```

---

## 3. robot_control_api 功能包

**路径**: `/home/huahai/dobot_ws/src/robot_control_api`

### 功能说明

提供简洁的 Python API 控制 Nova5 机器人，方便编程控制。

### 包含模块

#### 3.1 nova5_controller
- **功能**: Nova5 机器人控制器类，提供：
  - 连接/断开机器人
  - 启用/禁用机器人
  - 关节运动 (MoveJ)
  - 笛卡尔运动 (MoveJ/MoveL)
  - 获取当前状态 (关节角度、位姿)
  - 速度设置
  - I/O 控制

**使用示例**:
```python
from robot_control_api.nova5_controller import Nova5Controller

# 创建控制器
controller = Nova5Controller()

# 连接机器人
controller.connect()

# 启用机器人
controller.enable()

# 设置速度
controller.set_speed(20)  # 20% 速度

# 关节运动
controller.move_joint(j1=0, j2=0, j3=90, j4=0, j5=90, j6=0)

# 笛卡尔运动
controller.move_cartesian(x=300, y=0, z=200, rx=0, ry=0, rz=0)

# 获取状态
joints = controller.get_joint_angles()
pose = controller.get_pose()

# 断开连接
controller.disconnect()
```

#### 3.2 examples/basic_control
- **功能**: 基础控制示例程序
- **演示内容**:
  - 连接机器人
  - 启用机器人
  - 获取当前状态
  - 关节运动
  - 笛卡尔运动

#### 3.3 examples/advanced_control
- **功能**: 高级控制示例程序

#### 3.4 examples/text
- **功能**: 文本控制示例程序

### 启动方法

```bash
# 首先启动 Dobot 机器人驱动
ros2 launch dobot_bringup_v3 dobot_bringup_ros2.launch.py

# 运行基础控制示例
ros2 run robot_control_api basic_control

# 运行高级控制示例
ros2 run robot_control_api advanced_control

# 运行文本控制示例
ros2 run robot_control_api text

# 或在 Python 代码中导入使用
from robot_control_api.nova5_controller import Nova5Controller
```

---

## 4. 完整启动流程

### 4.1 启动深度相机驱动 (RealSense)

```bash
# 启动 RealSense D435i 相机
ros2 launch realsense2_camera rs_launch.py

# 或启动带对齐的深度和彩色图像
ros2 launch realsense2_camera rs_launch.py align_depth:=true

# 如需指定相机序列号（多相机时）
ros2 launch realsense2_camera rs_launch.py serial_no:=<相机序列号>
```

### 4.2 启动机器人驱动

```bash
# 启动 Dobot Nova5 驱动
ros2 launch dobot_bringup_v3 dobot_bringup_ros2.launch.py
```

### 4.3 启动 MoveIt (如需使用运动规划)

```bash
# 启动 MoveIt 规划
ros2 launch nova5_moveit demo.launch.py
```

### 4.4 启动手势跟踪控制

```bash
# 终端 1: 启动手势跟踪
ros2 run hand_tracking hand_tracking_robot_node

# 终端 2: 启动逆运动学节点
ros2 run hand_tracking nova5_ik_node
```

### 4.4 启动 Qt 控制界面

```bash
ros2 run qt_robot_control robot_controller
```

---

## 5. 依赖安装

```bash
# 安装 MediaPipe
pip3 install mediapipe

# 安装 PyQt5
pip3 install PyQt5

# 安装 cv_bridge 和 OpenCV
sudo apt install ros-humble-cv-bridge python3-opencv

# 安装 MoveIt
sudo apt install ros-humble-moveit
```

---

## 6. 工作空间编译

```bash
cd /home/huahai/dobot_ws

# 编译工作空间
colcon build

# 只编译指定包
colcon build --packages-select hand_tracking qt_robot_control robot_control_api

# source 环境
source install/setup.bash
```

---

## 7. 注意事项

1. **启动顺序**: 必须先启动 `dobot_bringup_v3` 驱动，再启动其他节点
2. **网络配置**: 确保机器人 IP 地址正确 (默认: 192.168.5.1)
3. **相机配置**: 使用 RealSense 相机时，先启动相机驱动:
   ```bash
   ros2 launch realsense2_camera rs_launch.py
   ```
4. **安全提示**: 运行前确保机器人周围无障碍物，速度建议从 10-20% 开始测试

---

## 8. 常见问题

### Q: 节点无法启动
- 检查是否已 source 环境: `source /home/huahai/dobot_ws/install/setup.bash`
- 检查依赖是否安装完整

### Q: 无法连接机器人
- 检查机器人 IP 地址是否正确
- 检查网络连接: `ping 192.168.5.1`
- 检查驱动是否已启动

### Q: 手势跟踪无响应
- 检查相机是否已启动
- 检查相机话题是否正确
- 确保手部在相机视野范围内

---

## 9. 文件路径汇总

| 功能包 | 路径 |
|--------|------|
| hand_tracking | `/home/huahai/dobot_ws/src/hand_tracking` |
| qt_robot_control | `/home/huahai/dobot_ws/src/qt_robot_control` |
| robot_control_api | `/home/huahai/dobot_ws/src/robot_control_api` |
| dobot_bringup_v3 | `/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/dobot_bringup_v3` |
| nova5_moveit | `/home/huahai/dobot_ws/src/DOBOT_6Axis_ROS2_V3/nova5_moveit` |

---

## 10. 机器人跟随手指项目

### 10.1 项目概述

该项目实现了 Dobot Nova5 机器人通过手势跟踪进行跟随控制的功能。使用 RealSense 相机采集手部图像，通过 MediaPipe 进行手部检测，将手指位置转换为机器人坐标，最终控制机器人跟随手指移动。

### 10.2 启动流程

```bash
# 首先启动 Dobot 机器人驱动
ros2 launch dobot_bringup_v3 dobot_bringup_ros2.launch.py

# 启动 RealSense D435i 相机
ros2 launch realsense2_camera rs_launch.py

# 启动 3D 手势跟踪
ros2 run hand_tracking hand_tracking_3d_node

# 启动逆运动学节点
ros2 run hand_tracking nova5_ik_node
```

### 10.3 点标定说明

`hand_tracking_3d_node.py` 使用点对标定方法将相机像素坐标转换为机器人坐标。以下是详细的标定步骤：

#### 10.3.1 标定原理

- 使用 **仿射变换** 算法，通过至少3个点对计算变换矩阵
- 每个点对包含：相机像素坐标 `(u, v)` → 机器人坐标 `(x, y, z)` (单位: mm)

#### 10.3.2 标定步骤

1. **准备工作**：
   - 确保机器人和相机都已启动
   - 固定相机位置，避免后续移动

2. **收集点对数据**：
   - 选择至少3个特征点，建议分布在相机视野的不同位置（如左上、中心、右下）
   - 对每个特征点：
     - 在相机中找到该点的像素坐标 `(u, v)`
     - 使用机器人控制界面将末端执行器移动到该点
     - 记录机器人坐标系下的坐标 `(x, y, z)`

3. **修改点对配置**：
   - 打开文件：`/home/huahai/dobot_ws/src/hand_tracking/hand_tracking/hand_tracking_3d_node.py`
   - 找到 `point_pairs` 字典（大约第66-71行）
   - 替换为你的点对数据：

   ```python
   self.point_pairs = {
       # 示例点对，需要根据实际测量修改
       (276, 200): (-664, 30, 200),    # 左上方
       (381, 342): (-513, -148, 200),   # 中心
       (432, 152): (-473, 110, 200),    # 右下方
   }
   ```

4. **设置目标高度**：
   - 修改 `target_z` 参数（默认: 500.0 mm）
   - 可以通过命令行参数设置：
     ```bash
     ros2 run hand_tracking hand_tracking_3d_node --ros-args -p target_z:=300.0
     ```

5. **验证标定结果**：
   - 启动 `hand_tracking_3d_node`
   - 观察终端输出，确认像素坐标到机器人坐标的转换是否正确
   - 移动手指，检查机器人是否跟随手指移动

#### 10.3.3 标定技巧

- **点的选择**：
  - 选择3-5个点，分布均匀
  - 避免点在同一直线上
  - 选择容易重复定位的特征点

- **精度提升**：
  - 使用更多点对（最多6个）
  - 重复测量同一位置，取平均值
  - 确保相机和机器人的相对位置固定

- **故障排查**：
  - 如果变换矩阵计算失败，检查点对数量（至少3个）
  - 如果转换结果不准确，检查点对数据是否正确
  - 确保相机镜头清洁，光线充足

### 10.4 运行说明

1. **按键控制**（在 `nova5_ik_node` 中）：
   - `b` 键：接收一次手部位置
   - `a` 键：执行移动（固定姿态）
   - `e` 键：启用机器人
   - `q` 键：退出程序

2. **姿态设置**：
   - 固定姿态：RX=-177.2214°, RY=-1.0013°, RZ=132.4267°
   - 可根据实际需求调整 `execute_movement_fixed_pose` 函数中的姿态参数

3. **安全提示**：
   - 首次运行时使用低速（10-20%）
   - 确保机器人工作区域无障碍物
   - 准备紧急停止措施

---

## 11. 项目扩展

- **添加深度相机支持**：使用 RealSense 深度数据自动获取 Z 坐标
- **多手指控制**：扩展支持多指手势识别
- **轨迹规划**：添加平滑轨迹生成算法
- **障碍物避障**：集成碰撞检测功能

---

## 12. 维护与更新

- 定期更新 MediaPipe 库以获得更好的手部检测性能
- 根据相机位置变化重新进行点标定
- 优化变换矩阵计算算法以提高精度

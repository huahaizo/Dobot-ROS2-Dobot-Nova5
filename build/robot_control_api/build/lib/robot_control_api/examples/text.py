#!/usr/bin/env python3
"""
基础控制示例
演示如何使用 Nova5Controller 控制机器人
"""

import sys
sys.path.insert(0, '/home/huahai/dobot_ws/src/robot_control_api')

from robot_control_api.nova5_controller import Nova5Controller
import time

def feed(controller):
     # 获取当前状态
        print("\n=== 获取当前状态 ===")
        joints = controller.get_joint_angles()
        if joints:
            print(f"当前关节角度: {joints}")
        
        pose = controller.get_pose()
        if pose:
            print(f"当前位姿: X={pose[0]:.2f}, Y={pose[1]:.2f}, Z={pose[2]:.2f}, "
                  f"RX={pose[3]:.2f}, RY={pose[4]:.2f}, RZ={pose[5]:.2f}")



def main():
    """主函数"""
    # 创建控制器
    controller = Nova5Controller()
    
    try:
        # 连接到机器人
        if not controller.connect():
            print("连接失败")
            return
        
        # 启用机器人
        print("\n=== 启用机器人 ===")
        if not controller.enable(load=0.0):
            print("启用失败")
            return
        
        # 设置速度
        print("\n=== 设置速度 ===")
        controller.set_speed(20)  # 20% 速度
        feed(controller)
        
           # 笛卡尔运动
        print("\n=== 笛卡尔运动 ===")
        # MoveJ 运动
        controller.move_cartesian(
            x=-380, y=133, z=500, 
            rx=177, ry=-1, rz=151,
            linear=False,  # MoveJ
            wait=True
        )
        time.sleep(1)

        feed(controller)


    except KeyboardInterrupt:
        print("\n用户中断")
    except Exception as e:
        print(f"错误: {e}")
    finally:
        # 关闭使能
        print("\n=== 关闭使能 ===")
        controller.disable()
        
        # 断开连接
        controller.disconnect()


if __name__ == '__main__':
    main()

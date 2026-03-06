#!/usr/bin/env python3
"""
高级控制示例
演示更复杂的机器人控制场景
"""

import sys
sys.path.insert(0, '/home/huahai/dobot_ws/src/robot_control_api')

from robot_control_api.nova5_controller import Nova5Controller
import time
import math


class RobotTask:
    """机器人任务类"""
    
    def __init__(self, controller: Nova5Controller):
        self.controller = controller
    
    def pick_and_place(self, pick_pos: dict, place_pos: dict):
        """
        抓取和放置任务
        
        Args:
            pick_pos: 抓取位置 {x, y, z, rx, ry, rz}
            place_pos: 放置位置 {x, y, z, rx, ry, rz}
        """
        print("\n=== 开始抓取任务 ===")
        
        # 1. 移动到抓取位置上方
        print("1. 移动到抓取位置上方")
        above_pick = pick_pos.copy()
        above_pick['z'] += 50  # 上方 50mm
        self.controller.move_cartesian(**above_pick, linear=False)
        
        # 2. 下降到抓取位置
        print("2. 下降到抓取位置")
        self.controller.move_cartesian(**pick_pos, linear=True)
        
        # 3. 抓取（关闭夹爪）
        print("3. 抓取物体")
        self.controller.control_gripper(open=False)
        time.sleep(1)
        
        # 4. 抬起
        print("4. 抬起物体")
        self.controller.move_cartesian(**above_pick, linear=True)
        
        # 5. 移动到放置位置上方
        print("5. 移动到放置位置上方")
        above_place = place_pos.copy()
        above_place['z'] += 50
        self.controller.move_cartesian(**above_place, linear=False)
        
        # 6. 下降到放置位置
        print("6. 下降到放置位置")
        self.controller.move_cartesian(**place_pos, linear=True)
        
        # 7. 放置（打开夹爪）
        print("7. 放置物体")
        self.controller.control_gripper(open=True)
        time.sleep(1)
        
        # 8. 抬起
        print("8. 抬起")
        self.controller.move_cartesian(**above_place, linear=True)
        
        print("=== 抓取任务完成 ===")
    
    def draw_square(self, center_x: float, center_y: float, 
                    z: float, size: float = 100):
        """
        画正方形
        
        Args:
            center_x, center_y: 中心位置
            z: 高度
            size: 正方形边长
        """
        print("\n=== 开始画正方形 ===")
        
        half = size / 2
        corners = [
            {'x': center_x - half, 'y': center_y - half, 'z': z, 
             'rx': 180, 'ry': 0, 'rz': 0},
            {'x': center_x + half, 'y': center_y - half, 'z': z,
             'rx': 180, 'ry': 0, 'rz': 0},
            {'x': center_x + half, 'y': center_y + half, 'z': z,
             'rx': 180, 'ry': 0, 'rz': 0},
            {'x': center_x - half, 'y': center_y + half, 'z': z,
             'rx': 180, 'ry': 0, 'rz': 0},
            {'x': center_x - half, 'y': center_y - half, 'z': z,
             'rx': 180, 'ry': 0, 'rz': 0},  # 回到起点
        ]
        
        # 先移动到起始点上方
        start_above = corners[0].copy()
        start_above['z'] += 50
        self.controller.move_cartesian(**start_above, linear=False)
        
        # 下降
        self.controller.move_cartesian(**corners[0], linear=True)
        
        # 画正方形
        for i, corner in enumerate(corners[1:], 1):
            print(f"移动到角点 {i}")
            self.controller.move_cartesian(**corner, linear=True)
        
        # 抬起
        self.controller.move_cartesian(**start_above, linear=True)
        
        print("=== 正方形绘制完成 ===")
    
    def circular_motion(self, center_x: float, center_y: float,
                       z: float, radius: float = 100, 
                       points: int = 36):
        """
        圆周运动
        
        Args:
            center_x, center_y: 圆心位置
            z: 高度
            radius: 半径
            points: 分割点数
        """
        print("\n=== 开始圆周运动 ===")
        
        # 生成圆周上的点
        circle_points = []
        for i in range(points + 1):
            angle = 2 * math.pi * i / points
            x = center_x + radius * math.cos(angle)
            y = center_y + radius * math.sin(angle)
            circle_points.append({
                'x': x, 'y': y, 'z': z,
                'rx': 180, 'ry': 0, 'rz': 0
            })
        
        # 先移动到起始点上方
        start_above = circle_points[0].copy()
        start_above['z'] += 50
        self.controller.move_cartesian(**start_above, linear=False)
        
        # 下降
        self.controller.move_cartesian(**circle_points[0], linear=True)
        
        # 沿圆周运动
        for i, point in enumerate(circle_points[1:], 1):
            if i % 9 == 0:  # 每 90 度打印一次
                print(f"圆周运动进度: {i/points*100:.0f}%")
            self.controller.move_cartesian(**point, linear=True)
        
        # 抬起
        self.controller.move_cartesian(**start_above, linear=True)
        
        print("=== 圆周运动完成 ===")
    
    def follow_trajectory(self, waypoints: list, linear: bool = True):
        """
        沿轨迹运动
        
        Args:
            waypoints: 路径点列表 [{x, y, z, rx, ry, rz}, ...]
            linear: 是否直线运动
        """
        print(f"\n=== 开始轨迹跟踪 ({len(waypoints)} 个点) ===")
        
        for i, point in enumerate(waypoints):
            print(f"移动到路径点 {i+1}/{len(waypoints)}")
            self.controller.move_cartesian(**point, linear=linear)
        
        print("=== 轨迹跟踪完成 ===")


def main():
    """主函数"""
    # 使用上下文管理器
    with Nova5Controller() as controller:
        # 连接到机器人
        if not controller.connect():
            print("连接失败")
            return
        
        # 启用机器人
        if not controller.enable(load=0.0):
            return
        
        # 设置速度
        controller.set_speed(30)
        
        # 创建任务对象
        task = RobotTask(controller)
        
        try:
            # 示例 1: 简单的抓取放置
            print("\n" + "="*50)
            print("示例 1: 抓取放置")
            print("="*50)
            
            pick_position = {
                'x': 300, 'y': -100, 'z': 100,
                'rx': 180, 'ry': 0, 'rz': 0
            }
            place_position = {
                'x': 300, 'y': 100, 'z': 100,
                'rx': 180, 'ry': 0, 'rz': 0
            }
            task.pick_and_place(pick_position, place_position)
            
            # 示例 2: 画正方形
            print("\n" + "="*50)
            print("示例 2: 画正方形")
            print("="*50)
            task.draw_square(center_x=350, center_y=0, z=150, size=100)
            
            # 示例 3: 圆周运动
            print("\n" + "="*50)
            print("示例 3: 圆周运动")
            print("="*50)
            task.circular_motion(center_x=350, center_y=0, z=150, radius=80)
            
            # 示例 4: 自定义轨迹
            print("\n" + "="*50)
            print("示例 4: 自定义轨迹")
            print("="*50)
            
            trajectory = [
                {'x': 300, 'y': 0, 'z': 200, 'rx': 0, 'ry': 0, 'rz': 0},
                {'x': 350, 'y': 50, 'z': 180, 'rx': 0, 'ry': 0, 'rz': 45},
                {'x': 400, 'y': 0, 'z': 160, 'rx': 0, 'ry': 0, 'rz': 90},
                {'x': 350, 'y': -50, 'z': 180, 'rx': 0, 'ry': 0, 'rz': 135},
                {'x': 300, 'y': 0, 'z': 200, 'rx': 0, 'ry': 0, 'rz': 180},
            ]
            task.follow_trajectory(trajectory, linear=True)
            
            # 回到安全位置
            print("\n=== 回到安全位置 ===")
            controller.move_joint(j1=0, j2=0, j3=90, j4=0, j5=90, j6=0)
            
        except Exception as e:
            print(f"错误: {e}")
        
        finally:
            # 关闭使能
            controller.disable()
    
    print("\n程序结束")


if __name__ == '__main__':
    main()

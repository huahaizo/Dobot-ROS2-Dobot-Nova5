from setuptools import find_packages, setup

package_name = 'hand_tracking'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='huahai',
    maintainer_email='huahai@todo.todo',
    description='TODO: Package description',
    license='TODO: License declaration',
    extras_require={
        'test': [
            'pytest',
        ],
    },
    entry_points={
        'console_scripts': [
            'hand_tracking_node = hand_tracking.hand_tracking_node:main',
            'hand_tracking_3d_node = hand_tracking.hand_tracking_3d_node:main',
            'hand_tracking_robot_node = hand_tracking.hand_tracking_robot_node:main',
            'nova5_ik_node = hand_tracking.nova5_ik_node:main',
        ],
    },
)

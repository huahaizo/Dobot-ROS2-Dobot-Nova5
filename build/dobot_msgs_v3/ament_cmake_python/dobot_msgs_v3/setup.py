from setuptools import find_packages
from setuptools import setup

setup(
    name='dobot_msgs_v3',
    version='0.0.0',
    packages=find_packages(
        include=('dobot_msgs_v3', 'dobot_msgs_v3.*')),
)

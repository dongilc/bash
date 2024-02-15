#!/bin/bash

ROS_DISTRO=noetic

echo "Installing ROS distro $ROS_DISTRO"
sudo apt-get update

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt-get update
sudo apt-get install -y libgl1-mesa-dev vim vim-runtime tmux screen git curl wget 
sudo apt-get update
sudo apt install ros-noetic-desktop-full

# Source ROS
echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc

# install additional dependency for vescuino
#sudo apt-get -y install ros-melodic-joy ros-melodic-ackermann-msgs ros-melodic-serial
#sudo apt-get -y install ros-melodic-actionlib ros-melodic-tf ros-melodic-rviz ros-melodic-robot-state-publisher ros-melodic-effort-controllers ros-melodic-gazebo-ros

# essential source code git clone
#git clone https://github.com/dongilc/catkin_ws.git
#git clone https://github.com/dongilc/bash.git
#git clone https://github.com/wjwwood/serial.git

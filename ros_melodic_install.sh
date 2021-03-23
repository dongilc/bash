#!/bin/bash

ROS_DISTRO=melodic

echo "Installing ROS distro $ROS_DISTRO"
sudo apt-get update

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt update
sudo apt install -y ros-$ROS_DISTRO-desktop-full
sudo apt update

sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

sudo rosdep init
rosdep update

# Source ROS
echo "## ROS Version Setting ##" >> ~/.bashrc
#echo "CODE_NAME=$(lsb_release -c -s)" >> ~/.bashrc
#echo "if [ \"\$CODE_NAME\" = "xenial" ]; then" >> ~/.bashrc
#echo "  ROS_DISTRO="kinetic"" >> ~/.bashrc
#echo "elif [ \"\$CODE_NAME\" = "bionic" ]; then" >> ~/.bashrc
#echo "  ROS_DISTRO="melodic"" >> ~/.bashrc
#echo "fi" >> ~/.bashrc
#echo "## settings for .bashrc ##" >> ~/.bashrc
echo "source /opt/ros/\$ROS_DISTRO/setup.bash" >> ~/.bashrc

# install additional dependency for vescuino
#sudo apt-get -y install ros-melodic-joy ros-melodic-ackermann-msgs ros-melodic-serial
#sudo apt-get -y install ros-melodic-actionlib ros-melodic-tf ros-melodic-rviz ros-melodic-robot-state-publisher ros-melodic-effort-controllers ros-melodic-gazebo-ros

# essential source code git clone
#git clone https://github.com/dongilc/catkin_ws.git
#git clone https://github.com/dongilc/bash.git
#git clone https://github.com/wjwwood/serial.git

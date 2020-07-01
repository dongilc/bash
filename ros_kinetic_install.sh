#!/bin/bash

ROS_DISTRO=kinetic

echo "Installing ROS distro $ROS_DISTRO"
sudo apt-get update

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116

sudo apt-get update
sudo apt-get install -y libgl1-mesa-dev-lts-utopic vim vim-runtime tmux screen git curl wget ros-$ROS_DISTRO-desktop-full python-wstool
sudo apt-get update

# Source ROS
echo "## ROS Version Setting ##" >> ~/.bashrc
echo "CODE_NAME=$(lsb_release -c -s)" >> ~/.bashrc
echo "if [ \"\$CODE_NAME\" = "xenial" ]; then" >> ~/.bashrc
echo "  ROS_DISTRO="kinetic"" >> ~/.bashrc
echo "elif [ \"\$CODE_NAME\" = "bionic" ]; then" >> ~/.bashrc
echo "  ROS_DISTRO="melodic"" >> ~/.bashrc
echo "fi" >> ~/.bashrc
echo "## settings for .bashrc ##" >> ~/.bashrc
echo "source /opt/ros/\$ROS_DISTRO/setup.bash" >> ~/.bashrc

# install additional dependency for vescuino
sudo apt-get -y install ros-$ROS_DISTRO-joy ros-$ROS_DISTRO-ackermann-msgs ros-$ROS_DISTRO-serial
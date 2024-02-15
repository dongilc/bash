#!/bin/bash

sudo apt update
sudo apt upgrade
sudo add-apt-repository -y ppa:team-gcc-arm-embedded/ppa
sudo apt update
sudo apt install -y gcc-arm-embedded

wget vedder.se/Temp/49-stlinkv2.rules
sudo mv 49-stlinkv2.rules /etc/udev/rules.d/
sudo udevadm trigger

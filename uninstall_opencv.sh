# Opencv version check
pkg-config --modversion opencv

# library check
apt list --installed | grep opencv.

# uninstall opencv
sudo apt-get purge libopencv*

xpm install --global @gnu-mcu-eclipse/arm-none-eabi-gcc
xpm install --global @gnu-mcu-eclipse/openocd

###install openocd rules (ensure the version matches!)
#sudo ln -s ~/opt/xPacks/@gnu-mcu-eclipse/openocd/0.10.0-7.1/.content/contrib/60-openocd.rules /etc/udev/rules.d/
#sudo service udev restart

#sudo ln -s ~/opt/xPacks/@gnu-mcu-eclipse/openocd/0.10.0-7.1/.content/bin/openocd /usr/bin/openocd

### check install
#openocd -v

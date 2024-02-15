# use
# gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2

sudo rm -rf /usr/bin/arm-none-eabi-*

sudo tar xjf gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 -C /usr/share/

sudo ln -s /usr/share/gcc-arm-none-eabi-7-2018-q2-update/bin/arm-none-eabi-gcc /usr/bin/arm-none-eabi-gcc 
sudo ln -s /usr/share/gcc-arm-none-eabi-7-2018-q2-update/bin/arm-none-eabi-g++ /usr/bin/arm-none-eabi-g++
sudo ln -s /usr/share/gcc-arm-none-eabi-7-2018-q2-update/bin/arm-none-eabi-gdb /usr/bin/arm-none-eabi-gdb
sudo ln -s /usr/share/gcc-arm-none-eabi-7-2018-q2-update/bin/arm-none-eabi-size /usr/bin/arm-none-eabi-size
sudo ln -s /usr/share/gcc-arm-none-eabi-7-2018-q2-update/bin/arm-none-eabi-objcopy /usr/bin/arm-none-eabi-objcopy
sudo ln -s /usr/share/gcc-arm-none-eabi-7-2018-q2-update/bin/arm-none-eabi-objdump /usr/bin/arm-none-eabi-objdump

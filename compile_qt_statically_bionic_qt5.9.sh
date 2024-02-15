#!/bin/bash

# https://github.com/LairdCP/UwTerminalX/wiki/Compiling-Qt-Statically
# https://wiki.qt.io/Building_Qt_5_from_Git

sudo apt-get install build-dep qt5-default
sudo apt-get install libxcb-xinerama0-dev build-essential perl python git "^libxcb.*" libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev flex bison gperf libicu-dev libxslt-dev ruby libssl-dev libxcursor-dev libxcomposite-dev libxdamage-dev libxrandr-dev libfontconfig1-dev libcap-dev libxtst-dev libpulse-dev libudev-dev libpci-dev libnss3-dev libasound2-dev libxss-dev libegl1-mesa-dev gperf bison libbz2-dev libgcrypt11-dev libdrm-dev libcups2-dev libatkmm-1.6-dev libasound2-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libbluetooth-dev bluetooth blueman bluez libusb-dev libdbus-1-dev bluez-hcidump bluez-tools
cd /opt
sudo mkdir qt5
sudo chown $USER qt5
git clone https://code.qt.io/qt/qt5.git
cd qt5
git checkout 5.9
perl init-repository --module-subset=default,-qtwebkit,-qtwebkit-examples,-qtwebengine -f
mkdir build
cd build
../configure -prefix /opt/Qt/5.9-static/ -release -opensource -confirm-license -static -no-sql-mysql -no-sql-psql -no-sql-sqlite -no-journald -qt-zlib -no-mtdev -no-gif -qt-libpng -qt-libjpeg -qt-harfbuzz -no-openssl -qt-pcre -qt-xcb -no-xinput2 -no-glib -no-egl -qt-xkbcommon-x11 -no-compile-examples -no-cups -no-iconv -no-tslib -dbus-linked -no-xcb-xlib -no-eglfs -no-directfb -no-linuxfb -no-kms -nomake examples -nomake tests -skip qtwebsockets -skip qtwebchannel -skip qtwebengine -skip qtwayland -skip qtwinextras -skip qtsvg -skip qtsensors -skip multimedia -no-xkbcommon-evdev -no-evdev -no-libproxy -no-icu -no-accessibility -skip imageformats -skip location -no-xinput2 -qt-freetype
#make -j9
make
sudo make install

# Note: -no-dbus and -skip qtconnectivity can also be added, but then bluetooth and window titlebar menus don't work.


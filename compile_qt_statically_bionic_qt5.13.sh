#!/bin/bash

# Qt 5.13:
cd /opt
sudo mkdir qt5
sudo chown $USER qt5
git clone https://code.qt.io/qt/qt5.git
cd qt5
git checkout 5.13
perl init-repository --module-subset=default,-qtwebkit,-qtwebkit-examples,-qtwebengine
mkdir build
cd build
../configure -prefix /opt/Qt/5.13-static/ -release -opensource -confirm-license -static -no-sql-mysql -no-sql-psql -no-sql-sqlite -no-journald -qt-zlib -no-mtdev -no-gif -qt-libpng -qt-libjpeg -qt-harfbuzz -no-openssl -qt-pcre -qt-xcb -no-glib -no-egl -no-compile-examples -no-cups -no-iconv -no-tslib -dbus-linked -no-xcb-xlib -no-eglfs -no-directfb -no-linuxfb -no-kms -nomake examples -nomake tests -skip qtwebsockets -skip qtwebchannel -skip qtwebengine -skip qtwayland -skip qtwinextras -skip qtsvg -skip qtsensors -skip multimedia -no-evdev -no-libproxy -no-icu -no-accessibility -skip location -qt-freetype -skip qtimageformats -no-xinput2
#make -j9
make
sudo make install

# Note: -no-dbus and -skip qtconnectivity can also be added, but then bluetooth and window titlebar menus don't work.


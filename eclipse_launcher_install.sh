#!/bin/bash

echo "[Desktop Entry]" >> ~/.local/share/applications/eclipse.desktop
echo "Version=1.0" >> ~/.local/share/applications/eclipse.desktop
echo "Name=Eclipse" >> ~/.local/share/applications/eclipse.desktop
echo "Comment=IDE" >> ~/.local/share/applications/eclipse.desktop
echo "Type=Application" >> ~/.local/share/applications/eclipse.desktop
echo "Categories=Development;IDE;" >> ~/.local/share/applications/eclipse.desktop
echo "Exec=/home/cdi/eclipse/cpp-2020-03/eclipse/eclipse" >> ~/.local/share/applications/eclipse.desktop
echo "Terminal=false" >> ~/.local/share/applications/eclipse.desktop
echo "StartupNotify=true" >> ~/.local/share/applications/eclipse.desktop
echo "Icon=/home/cdi/eclipse/cpp-2020-03/eclipse/icon.xpm" >> ~/.local/share/applications/eclipse.desktop
echo "Name[en_US]=Eclipse" >> ~/.local/share/applications/eclipse.desktop

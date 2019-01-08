#!/bin/bash

cd /tmp
mkdir xdm; cd xdm; wget -O xdm64.tar.xz https://sourceforge.net/projects/xdman/files/xdm-2018-x64.tar.xz/download
tar -xvf xdm64.tar.xz
sudo ./install.sh

rm -rf /tmp/xdm

echo "################################################################"
echo "###################    XDM Installed      ######################"
echo "################################################################"

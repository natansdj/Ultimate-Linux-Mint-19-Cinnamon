#!/usr/bin/env bash

sudo apt-add-repository -y ppa:remmina-ppa-team/remmina-next
sudo apt-get -y update
sudo apt-get install -y remmina remmina-plugin-rdp libfreerdp-plugins-standard


echo "###################################################"
echo "###########    Remmina Installed      #############"
echo "###################################################"

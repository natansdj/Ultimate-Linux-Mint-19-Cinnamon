#!/bin/bash

sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install -y tlp tlp-rdw

##Start Tlp Manually
sudo tlp start

##Show Tlp Status
sudo tlp-stat -s 

echo "################################################################"
echo "###################    TLP Installed      ######################"
echo "################################################################"


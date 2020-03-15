#!/bin/bash

###### Bleachbit ######

rm /tmp/bleachbit_ubu1804.deb

wget https://download.bleachbit.org/bleachbit_3.2.0_all_ubuntu1804.deb -O /tmp/bleachbit_ubu1804.deb
sudo apt-get install -y menu
sudo dpkg -i /tmp/bleachbit_ubu1804.deb

rm /tmp/bleachbit_ubu1804.deb


##################################################################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

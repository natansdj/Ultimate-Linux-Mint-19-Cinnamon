#!/bin/bash

###### Bleachbit ######

rm /tmp/bleachbit_ubu1604.deb

wget https://download.bleachbit.org/bleachbit_1.12_all_ubuntu1604.deb -O /tmp/bleachbit_ubu1604.deb
sudo apt-get install -y menu
sudo dpkg -i /tmp/bleachbit_ubu1604.deb

rm /tmp/bleachbit_ubu1604.deb


##################################################################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


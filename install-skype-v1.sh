#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


#curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
#echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
#sudo apt update
#sudo apt install -y skypeforlinux

rm /tmp/skypeforlinux-64.deb

wget https://repo.skype.com/latest/skypeforlinux-64.deb -O /tmp/skypeforlinux-64.deb
sudo dpkg -i /tmp/skypeforlinux-64.deb
sudo apt install -f

rm /tmp/skypeforlinux-64.deb

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

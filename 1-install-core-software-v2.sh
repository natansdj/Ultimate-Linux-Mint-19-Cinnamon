#!/bin/bash
set -e
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

#software from 'normal' repositories
#sudo apt-get install -y catfish clementine curl dconf-cli dconf-editor dropbox evolution focuswriter geany geary gimp gpick
sudo apt-get install -y curl dconf-cli dconf-editor focuswriter geany
#sudo apt-get install -y glances hardinfo inkscape meld
sudo apt-get install -y gparted grsync
#sudo apt-get install -y openshot pinta plank ppa-purge radiotray screenruler screenfetch scrot shutter slurm synapse
sudo apt-get install -y plank ppa-purge screenfetch shutter
#sudo apt-get install -y thunar
sudo apt-get install -y vlc vnstat

#operating specific software

# sudo apt-get install nemo-compare -y

###############################################################################################

# installation of zippers and unzippers
#sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller
sudo apt-get install -y unrar zip unzip

###############################################################################################

### Utilities
### pwgen : password generator
sudo apt-get install -y pwgen


#ending
#mkdir $HOME/Upload
#sudo apt-get -y update
#sudo apt-get -f -y install
#sudo apt-get -y upgrade
#sudo apt-get -y autoremove
#sudo apt-get -y autoclean


echo "################################################################"
echo "###################    core software installed  ################"
echo "################################################################"


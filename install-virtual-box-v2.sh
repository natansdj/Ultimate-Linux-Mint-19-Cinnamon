#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


#rm /tmp/virtual-box.deb

#wget http://download.virtualbox.org/virtualbox/5.1.18/virtualbox-5.1_5.1.18-114002~Ubuntu~xenial_amd64.deb -O /tmp/virtual-box.deb
#wget https://download.virtualbox.org/virtualbox/5.2.6/virtualbox-5.2_5.2.6-120293~Ubuntu~xenial_amd64.deb -O /tmp/virtual-box.deb
wget https://download.virtualbox.org/virtualbox/6.0.0/virtualbox-6.0_6.0.0-127566~Ubuntu~bionic_amd64.deb -O /tmp/virtual-box.deb

sudo dpkg -i /tmp/virtual-box.deb
#gdebi /tmp/virtual-box.deb

rm /tmp/virtual-box.deb

##################################################################################################################

echo "################################################################"
echo "###########    Oracle VM VirtualBox Installed      #############"
echo "################################################################"



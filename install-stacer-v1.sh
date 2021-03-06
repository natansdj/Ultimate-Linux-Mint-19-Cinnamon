#!/bin/bash
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Downloading and installing latest teamviewer

# rm /tmp/stacer.deb
# wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.9/stacer_1.0.9_amd64.deb -O /tmp/stacer.deb
# sudo dpkg -i /tmp/stacer.deb
# rm /tmp/stacer.deb

sudo add-apt-repository ppa:oguzhaninan/stacer -y
sudo apt-get update
sudo apt-get install stacer -y


echo "################################################################"
echo "##############       stacer installed      #################"
echo "################################################################"

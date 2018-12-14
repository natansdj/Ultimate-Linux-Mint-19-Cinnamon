#!/bin/bash
set -e

sudo add-apt-repository ppa:zeal-developers/ppa -y
sudo apt-get -y update
sudo apt-get install -y zeal

echo "################################################################"
echo "############################## DONE ############################"
echo "################################################################"

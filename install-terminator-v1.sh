#!/bin/bash

sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install -y terminator

sh -c "./personal/800-setting-terminator-v1.sh"

echo "################################################################"
echo "################    terminator installed     ###################"
echo "################################################################"

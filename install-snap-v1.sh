#!/bin/bash

sudo apt-get update
sudo apt-get install -y snapd

sudo snap install --classic slack

echo "################################################################"
echo "####################    Snap Installed      ####################"
echo "################################################################"


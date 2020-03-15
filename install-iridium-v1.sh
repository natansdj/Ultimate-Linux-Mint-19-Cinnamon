#!/usr/bin/env bash

wget -qO - https://downloads.iridiumbrowser.de/ubuntu/iridium-release-sign-01.pub|sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/iridium-browser.list
deb [arch=amd64] https://downloads.iridiumbrowser.de/deb/ stable main
#deb-src https://downloads.iridiumbrowser.de/deb/ stable main
EOF
sudo apt-get update
sudo apt-get install iridium-browser


echo "######################################################################"
echo "###############       iridium browser installed      #################"
echo "######################################################################"

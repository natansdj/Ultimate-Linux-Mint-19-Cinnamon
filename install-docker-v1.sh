#!/bin/bash

#Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   bionic \
   stable"

sudo apt-get update
sudo apt-get install docker-ce

#rm /tmp/docker-ce.deb

#wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_17.12.0~ce-0~ubuntu_amd64.deb -O /tmp/docker-ce.deb
#sudo dpkg -i /tmp/docker-ce.deb

#rm /tmp/docker-ce.deb


###Docker Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.23.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose



echo "################################################################"
echo "###################    Docker Installed      ###################"
echo "################################################################"

#!/bin/bash

#Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt-get update
apt-cache policy docker-ce

sudo apt-get install -y docker-ce

#rm /tmp/docker-ce.deb

#wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_17.12.0~ce-0~ubuntu_amd64.deb -O /tmp/docker-ce.deb
#sudo dpkg -i /tmp/docker-ce.deb

#rm /tmp/docker-ce.deb


###Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

###adding the current user to the docker group:
sudo usermod -a -G docker $USER

###On Linux, run the following command to activate the changes to groups:
newgrp docker

###adding dev network
docker network create -d bridge --subnet 172.18.0.0/16 \
--gateway=172.18.0.1 \
--opt com.docker.network.bridge.enable_icc=true \
--opt com.docker.network.bridge.enable_ip_masquerade=true \
--opt com.docker.network.bridge.host_binding_ipv4=0.0.0.0 \
--opt com.docker.network.driver.mtu=1500 \
--opt com.docker.network.bridge.name="docker1" \
dev

###add xdebug for ufw
sudo ufw enable
sudo ufw allow in on docker1 from 172.18.0.0/24 to 172.18.0.1/32 port 9000 comment xdebug


echo "################################################################"
echo "###################    Docker Installed      ###################"
echo "################################################################"

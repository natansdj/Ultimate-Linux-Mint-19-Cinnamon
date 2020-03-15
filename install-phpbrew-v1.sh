#!/bin/bash

sudo apt install -y \
  php7.2 \
  php7.2-curl \
  php7.2-json \
  php7.2-cgi \
  php7.2-fpm \
  autoconf \
  automake \
  libxml2-dev \
  libcurl4-openssl-dev \
  libssl-dev \
  openssl \
  gettext \
  libicu-dev \
  libmcrypt-dev \
  libmcrypt4 \
  libbz2-dev \
  libreadline-dev \
  build-essential \
  libmhash-dev \
  libmhash2 \
  libxslt1-dev
#  libcurl4-gnutls-dev

#added for gd extension installation
#sudo apt install -y libpng-dev

###dependencies
sudo apt install -y libmcrypt4

rm /tmp/phpbrew

wget https://github.com/phpbrew/phpbrew/raw/master/phpbrew -O /tmp/phpbrew
sudo chmod +x /tmp/phpbrew

# Move phpbrew to somewhere can be found by your $PATH
sudo mv /tmp/phpbrew /usr/local/bin/phpbrew

phpbrew init

######################################################################################################
## FOR PHP 7.2
sudo apt install -y libcurl4-openssl-dev
sudo apt install -y libcurl4-gnutls-dev

## PHP 7.2 libcurl workaround issue https://stackoverflow.com/q/42300393
sudo ln -s /usr/include/x86_64-linux-gnu/curl /usr/local/include/curl
phpbrew install php-7.2 as php-7.2 +default+mysql+zlib+soap+fpm+iconv+exif+gd

## PHP 7.1
# phpbrew install php-7.1 as php-7.1 +default+mysql+zlib+soap+iconv+exif+gd

phpbrew ext install redis stable
phpbrew ext install xdebug stable

echo "################################################################"
echo "#################    PhpBrew installed      ####################"
echo "################################################################"

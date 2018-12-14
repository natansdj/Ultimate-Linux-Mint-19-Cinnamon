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

#added for gd extension installation
sudo apt install -y libpng-dev

rm /tmp/phpbrew

wget https://github.com/phpbrew/phpbrew/raw/master/phpbrew -O /tmp/phpbrew
sudo chmod +x /tmp/phpbrew

# Move phpbrew to somewhere can be found by your $PATH
sudo mv /tmp/phpbrew /usr/local/bin/phpbrew

phpbrew init

phpbrew install php-7.1 as php-7.1 +default+mcrypt+zlib+sockets+soap+mhash+fpm+openssl


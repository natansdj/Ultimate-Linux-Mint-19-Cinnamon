#!/bin/bash

### see : https://help.ubuntu.com/community/Oracle%20Instant%20Client

sudo apt-get install -y alien

sudo alien -i oracle-instantclient12.1-basic-12.1.0.2.0-1.x86_64.rpm
sudo alien -i oracle-instantclient12.1-sqlplus-12.1.0.2.0-1.x86_64.rpm
sudo alien -i oracle-instantclient12.1-devel-12.1.0.2.0-1.x86_64.rpm

sudo apt-get install -y php-dev php-pear build-essential libaio1

#sudo ldconfig

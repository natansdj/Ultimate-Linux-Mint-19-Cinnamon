#!/bin/sh

EXPECTED_SIGNATURE=$(wget -q -O - https://composer.github.io/installer.sig)
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
then
    >&2 echo 'ERROR: Invalid installer signature'
    rm composer-setup.php
    exit 1
fi

php composer-setup.php --quiet --1
RESULT=$?
rm composer-setup.php

# move composer into a bin directory you control:
sudo mv composer.phar /usr/local/bin/composer

# double check composer works
composer about

# (optional) Update composer:
composer self-update

[ -d $HOME/.composer ] || mkdir $HOME/.composer
sudo chown -R $USER. $HOME/.composer

exit $RESULT


#!/bin/bash


#/etc/sysctl.d/999-idea.conf

sudo sysctl -p --system

desktop-file-install --dir=$HOME/.local/share/applications ./personal/settings/phpstorm/phpstorm2017.desktop

echo "################################################################"
echo "###################    PHPStorm Installed      #################"
echo "################################################################"

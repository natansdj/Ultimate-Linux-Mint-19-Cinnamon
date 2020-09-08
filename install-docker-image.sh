#!/bin/bash

docker pull gogs/gogs && 
 docker pull mysql:5.7 && 
 docker pull mariadb:10.2.8 && 
 docker pull redis:alpine && 
 docker pull hardware/adminer && 
 docker pull webdevops/php-apache-dev:7.1 && 
 docker pull webdevops/php-apache-dev:7.2 &&  
 docker pull webdevops/php-apache-dev:7.4 && 
 docker pull jojomi/nginx-static && 
 docker pull jojomi/lighttpd-static && 
 docker pull elasticsearch:5-alpine && 
 docker pull jwilder/nginx-proxy && 
 docker pull golang:1.11-alpine && 
 docker pull natansdj/go-beego && 
 docker pull natansdj/php-orcl:72 && 
 docker pull node:10-alpine &&   
 docker pull mongo:4.0-xenial &&
 docker pull mailhog/mailhog &&
 docker pull rabbitmq:3.8.0-management &&
 docker pull devopsfaith/krakend:config-watcher



#!/bin/bash

docker pull gogs/gogs && \ 
 docker pull mysql:5.7 && \
 docker pull redis:alpine && \
 docker pull hardware/adminer && \
 docker pull webdevops/php-apache-dev:ubuntu-16.04 && \
 docker pull jojomi/nginx-static && \
 docker pull jojomi/lighttpd-static && \
 docker pull elasticsearch && \
 docker pull jwilder/nginx-proxy && \
 docker pull webdevops/php-apache-dev:7.2


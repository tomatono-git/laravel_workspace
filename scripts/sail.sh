#!/bin/bash

PWD=`pwd`
cd ../docker/laravel_web
sudo ../volumes/vendor/bin/sail "$@"
# cd ../docker/laravel_web
# sudo ./vendor/bin/sail "$@"
# cd ../docker
# sudo ./laravel_web/vendor/bin/sail $1
cd $PWD

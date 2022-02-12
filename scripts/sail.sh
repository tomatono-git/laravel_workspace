#!/bin/bash

PWD=`pwd`
cd ../docker/laravel_demo
sudo ./vendor/bin/sail $1
# cd ../docker
# sudo ./laravel_demo/vendor/bin/sail $1
cd $PWD
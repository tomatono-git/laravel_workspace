#!/bin/bash

PWD=`pwd`
cd ../docker/laravel_web/
./vendor/bin/sail exec -u sail -w /home/sail/scripts laravel.test "$@"
cd $PWD

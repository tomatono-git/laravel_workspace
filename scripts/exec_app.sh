#!/bin/bash

PWD=`pwd`
cd ../docker/laravel_web/
../volumes/vendor/bin/sail exec -u sail -w /home/sail/scripts laravel.test "$@"
cd $PWD

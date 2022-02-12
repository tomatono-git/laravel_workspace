#!/bin/bash

PWD=`pwd`
cd ../docker/laravel_web/
# sudo 
./vendor/bin/sail exec -u sail -w /home/sail/scripts laravel.test bash ./install_ui_auth.sh
cd $PWD

# docker-compose exec laravel.test --user sail -w /home/sail/scripts bash ./install_ui_auth.sh
# ./sail.sh exec laravel.test --user sail -w /home/sail/scripts bash ./install_ui_auth.sh

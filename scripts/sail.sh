#!/bin/bash

PWD=`pwd`
cd ../docker/laravel_web

if [ ! -e .env ]; then
    # laravel_web フォルダに .env ファイルがなければコピー。
    cp ../volumes/env/psql.env .env
fi

# sail 実行
sudo ../volumes/vendor/bin/sail "$@"

# cd ../docker/laravel_web
# sudo ./vendor/bin/sail "$@"
# cd ../docker
# sudo ./laravel_web/vendor/bin/sail $1

cd $PWD

#!/bin/bash

# コンテナを強制削除
docker rm --force laravel_web-laravel.test-1

docker images -a
# イメージを削除
docker rmi `docker images sail-8.1/app -q`
# docker rmi `docker images -q`
docker images -a

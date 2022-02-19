#!/bin/bash

# コンテナを強制削除
docker rm --force laravel_web-pgsql-1

docker images postgres -q
# イメージを削除
docker rmi `docker images postgres -q`
# docker rmi `docker images -q`
docker images postgres -q

# ボリュームを削除
docker volume rm laravel_web_sail-pgsql

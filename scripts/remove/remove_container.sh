#!/bin/bash

docker ps -a
# コンテナを強制削除
docker rm --force `docker ps -aq`
docker ps -a

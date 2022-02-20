#!/bin/bash

# 作業ディレクトリ
WORK_DIR=~/pg/git/php/laravel

# # docker用リポジトリ
# LARAVEL_WORKSPACE=$WORK_DIR/laravel_workspace
# # アプリのリポジトリ
# LARAVEL_WEB=$LARAVEL_WORKSPACE/docker/laravel_web

# mkdir -p $WORK_DIR
cd $WORK_DIR

# Laravel プロジェクト作成 (laravel_web)
curl -s "https://laravel.build/laravel_web?with=pgsql,redis,meilisearch,mailhog,selenium&devcontainer" | bash

cd $WORK_DIR/laravel_web

git init
git add .
git commit -m '新規作成'

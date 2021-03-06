# #!/bin/bash

# # WSL でマウントしたファイルシステムでもパーミッションを扱えるようにする
# if [ ! -e .env ]; then
#     sudo tee /etc/wsl.conf <<EOF >/dev/null
#     [automount]
#     options = "metadata"
#     EOF
# fi

git config --global user.name "tomato"
git config --global user.email "tomatono@gmail.com"

# GitHub の認証情報を保存
git config --global credential.helper "store"

# 改行コードの自動変換を無効にする
git config --global core.autocrlf false

# 作業ディレクトリ
WORK_DIR=~/pg/git/php/laravel

# docker用リポジトリ
LARAVEL_WORKSPACE=$WORK_DIR/laravel_workspace
# アプリのリポジトリ
LARAVEL_WEB=$LARAVEL_WORKSPACE/docker/laravel_web

mkdir -p $WORK_DIR
cd $WORK_DIR

# git リポジトリ
REPOS=https://github.com/tomatono-git/laravel_workspace.git
# git colone
git clone $REPOS

# 行権限を追加
sudo chmod u+x  -R $LARAVEL_WORKSPACE/scripts
sudo chmod u+x  $LARAVEL_WORKSPACE/docker/volumes/vendor/bin/sail
sudo chmod u+x  $LARAVEL_WORKSPACE/docker/volumes/vendor/laravel/sail/bin/sail

# cd $LARAVEL_WEB

# オーナー変更
sudo chown -R $USER: $LARAVEL_WEB

cd $LARAVEL_WORKSPACE/scripts
./sail.sh up

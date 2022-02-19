# #!/bin/bash

# 改行コードの自動変換を無効にする
git config --global core.autocrlf false

# docker用リポジトリ
LARAVEL_WORKSPACE=~/pg/git/php/laravel/laravel_workspace
# アプリのリポジトリ
LARAVEL_WEB=$LARAVEL_WORKSPACE/docker/laravel_web

mkdir -p $LARAVEL_WORKSPACE
cd $LARAVEL_WORKSPACE

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




# ### git clone 後に実行するスクリプト ###

# # TODO ホストにPHPがないと動かない

# # プロジェクト名
# PROJECT_NAME=$1
# if [ "$PROJECT_NAME" = "" ]; then
#     PROJECT_NAME="laravel_web"
# fi

# # セットアップ
# cd ../../docker/$PROJECT_NAME \
#     && php ./artisan sail:install --with=pgsql,redis,meilisearch,mailhog,selenium --devcontainer \
#     && chown -R $USER .

# WHITE='\033[1;37m'
# NC='\033[0m'
# echo -e "${WHITE}Get started with:${NC} cd $PROJECT_NAME && ./vendor/bin/sail up"

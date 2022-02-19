# #!/bin/bash

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

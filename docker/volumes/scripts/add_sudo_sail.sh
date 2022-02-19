#!/bin/bash

# sudo に sail を追加
apt-get update
apt-get install -y sudo
gpasswd -a sail sudo

# sudo の確認
gpasswd -a sail sudo

# storage フォルダのパーミッションを変更
cd /var/www/html
sudo chmod 777 -R storage/

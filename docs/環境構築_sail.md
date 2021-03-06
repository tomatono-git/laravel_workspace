# Laravel Sail

## インストール (事前準備)

インストール-Laravel-Web職人のためのPHPフレームワーク
<https://laravel.com/docs/8.x/installation>

1. WSLに入る

  ```powershell
  wsl
  ```

1. Larabelのプロジェクトを作成

  ```bash
  curl -s https://laravel.build/[プロジェクト名] | bash
  ```

  例）プロジェクト名: laravel_web

  ```bash
  curl -s https://laravel.build/laravel_web | bash
  ```

## Dockerの構成を変更

- docker-compose.yml
  DBなどの構成の雛形は以下のフォルダにある
  vendor\laravel\sail\stubs

  PostgreSQLなら pgsql.stub の内容を docker-compose.yml をコピー。

  pgadmin4を使う場合は docker-compose.yml にコンテナを追加。
- .env
  docker-compose.yml の設定や DB接続の設定は環境変数として .env で変更できるようになっている。

  DBの設定は以下のファイル。
  config\database.php

  .env はmysql の設定を pgsql に変更する。
- Dockerfileなどをコピー
  ./vendor フォルダはgitの管理外なので変更内容をコピーしてgitで管理できるようにする。
  
  ```bash
  cp --parents -v ./vendor/laravel/sail/runtimes/8.1/* ../volumes/
  cp --parents -v ./vendor/bin/sail ../volumes/
  cp --parents -v ./vendor/laravel/sail/bin/sail ../volumes/
  ```
  
  --parents オプションでフォルダ階層を保ったままコピーできる。

  ```console
  ./vendor/laravel/sail/runtimes/8.1 -> ./zz_docker/./vendor/laravel/sail/runtimes/8.1
  './vendor/laravel/sail/runtimes/8.1/Dockerfile' -> './zz_docker/./vendor/laravel/sail/runtimes/8.1/Dockerfile'
  './vendor/laravel/sail/runtimes/8.1/php.ini' -> './zz_docker/./vendor/laravel/sail/runtimes/8.1/php.ini'
  './vendor/laravel/sail/runtimes/8.1/start-container' -> './zz_docker/./vendor/laravel/sail/runtimes/8.1/start-container'
  './vendor/laravel/sail/runtimes/8.1/supervisord.conf' -> './zz_docker/./vendor/laravel/sail/runtimes/8.1/supervisord.conf'
  ```

## git

### gitの設定

```bash
git config --global user.name "tomato"
git config --global user.email "tomatono@gmail.com"
```

改行コードの自動変換を無効にする

```bash
git config --global core.autocrlf false
```

### Linuxディストリビュションのホスト側パス

\\wsl.localhost\Ubuntu-20.04\

### git リポジトリの場所

\\wsl.localhost\Ubuntu-20.04\pg\git\php\laravel\laravel_workspace\
\\wsl.localhost\Ubuntu-20.04\pg\git\php\laravel\laravel_workspace\docker\laravel_web\

フォルダ作成 (WSL)

```bash
mkdir -p ~/pg/git/php/laravel
```

```bash
cd ~/pg/git/php/laravel
git clone https://github.com/tomatono-git/laravel_workspace.git
```

## Laravel Sail の起動前

- sudo
  root で laravel.test コンテナに入って実行

  ```bash
  apt-get update
  apt-get install -y sudo
  gpasswd -a sail sudo
  ```

  sudo ユーザー(sail)の確認

  ```bash
  sudo gpasswd -a sail sudo
  ```

- storage フォルダのパーミッションを変更

  ```bash
  cd /var/www/html
  sudo chmod 777 -R storage/
  ```

## Laravel Sail を起動

```bash
cd laravel_web

sudo ./vendor/bin/sail up
```

`./vendor/bin/sail up` は環境変数の設定などをしてから `docker compose up` を実行する。
そのため `docker compose` 関連のコマンドを直接実行しても失敗する場合がある。
(up / down など)

## Laravel mix

<https://readouble.com/laravel/8.x/ja/mix.html>

1. nmpのパッケージのインストール
  飛ばしてOK（ui/authのインストールで実行）

  ```bash
  npm install
  ```
 <!-- 
  ```bash
  npm ci
  ```
-->
<!-- 
  ```bash
  yarn install
  ```
-->

  ```bash
  npm run dev
  ```

1. ui/authのインストール

  ```bash
  composer require laravel/ui
  php artisan ui vue --auth
  npm install && npm run dev
  php artisan migrate
  ```

## マイグレーション

<https://readouble.com/laravel/8.x/ja/migrations.html>

- マイグレーションファイルの作成

  ```bash
  php artisan make:migration create_todos_table
  ```

- マイグレーションの実行

  ```bash
  php artisan migrate
  ```

- マイグレーションの進行状況を確認

  ```bash
  php artisan migrate:status
  ```

  ```console
  +------+-------------------------------------------------------+-------+
  | Ran? | Migration                                             | Batch |
  +------+-------------------------------------------------------+-------+
  | Yes  | 2014_10_12_000000_create_users_table                  | 1     |
  | Yes  | 2014_10_12_100000_create_password_resets_table        | 1     |
  | Yes  | 2019_08_19_000000_create_failed_jobs_table            | 1     |
  | Yes  | 2019_12_14_000001_create_personal_access_tokens_table | 1     |
  | No   | 2022_02_11_170705_create_todos_table                  |       |
  +------+-------------------------------------------------------+-------+
  ```

- マイグレーションのロールバック

  ```bash
  php artisan migrate:rollback
  ```

## WSL

### アクセス権限

chmod でアクセス権限の変更ができない
WSL でマウントしたファイルシステムでもパーミッションを扱えるようにする

```bash
sudo tee /etc/wsl.conf <<EOF >/dev/null
[automount]
options = "metadata"
EOF
```

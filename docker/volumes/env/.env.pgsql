APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:u8BM7HuU+Z+wttIYUl8/k1O4/kVkpWxMaXLidNpXluc=
APP_DEBUG=true
APP_URL=http://laravel_demo.test
APP_PORT=8080

WWWUSER=1000
WWWGROUP=1000

LOG_CHANNEL=stack
LOG_DEPRECATIONS_CHANNEL=null
LOG_LEVEL=debug

DB_CONNECTION=pgsql
DB_HOST=pgsql
DB_PORT=5432
FORWARD_DB_PORT=15432
DB_DATABASE=laravel_app
DB_USERNAME=sail
DB_PASSWORD=password

PGADMIN_PORT=8081
PGADMIN_EMAIL=root@example.com
PGADMIN_PASSWORD=pass

BROADCAST_DRIVER=log
CACHE_DRIVER=file
FILESYSTEM_DISK=local
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

MEMCACHED_HOST=memcached

REDIS_HOST=redis
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_MAILER=smtp
MAIL_HOST=mailhog
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS=null
MAIL_FROM_NAME="${APP_NAME}"

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=
AWS_USE_PATH_STYLE_ENDPOINT=false

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"

SCOUT_DRIVER=meilisearch
MEILISEARCH_HOST=http://meilisearch:7700

SAIL_ENABLE_SUDO=1
SAIL_PASSWORD=p
SAIL_XDEBUG_MODE=debug,develop

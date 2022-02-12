#!/bin/bash

composer require laravel/ui
php artisan ui vue --auth
npm install && npm run dev
php artisan migrate

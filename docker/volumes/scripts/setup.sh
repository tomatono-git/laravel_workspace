#!/bin/bash

# sail up 後のセットアップスクリプト

./add_sudo_sail.sh
    && ./chmod_storage.sh \
    && ./install_ui_auth.sh \
    && ./migrate.sh \
    && ./npm_run_dev.sh \
    && ./set_git_config.sh \

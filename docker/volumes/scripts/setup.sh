#!/bin/bash

# sail up 後のセットアップスクリプト

./add_sudo_sail.sh
    && ./chmod_storage.sh \
    && ./install_ui_auth.sh.shh \
    && ./migrate.shh \
    && ./npm_run_dev.shh \

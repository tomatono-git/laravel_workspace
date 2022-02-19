#!/bin/bash

# ユーザー
git config --global user.name "tomato"
git config --global user.email "tomatono@gmail.com"

# GitHub の認証情報を保存
git config --global credential.helper "store"

# 改行コードの自動変換を無効にする
git config --global core.autocrlf false

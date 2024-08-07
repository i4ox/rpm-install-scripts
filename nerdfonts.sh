#!/bin/bash

# Проверка зависимостей
[ -x "$(command -v curl)" ] || sudo dnf install curl
[ -x "$(command -v unzip)" ] || sudo dnf install unzip

# Установка шрифта CascadiaCode NF
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaCode.zip
unzip CascadiaCode.zip -d cc
sudo mkdir /usr/share/fonts/CascadiaCode
sudo mv cc/*.ttf /usr/share/fonts/CascadiaCode
sudo fc-cache --force
rm -rf cc CascadiaCode.zip

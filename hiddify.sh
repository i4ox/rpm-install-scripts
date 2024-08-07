#!/bin/bash

# Проверка зависимостей
[ -x "$(command -v curl)" ] || sudo dnf install curl

# Установка HiddifyNext
curl -LO https://github.com/hiddify/hiddify-next/releases/download/v2.0.5/Hiddify-rpm-x64.rpm
sudo dnf install ./Hiddify-rpm-x64.rpm

# Удаление оставшегося rpm
sudo rm -rf Hiddify-rpm-x64.rpm

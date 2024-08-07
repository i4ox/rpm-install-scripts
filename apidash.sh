#!/bin/bash

# Проверка зависимостей
[ -x "$(command -v curl)" ] || sudo dnf install curl

# Установка ApiDash
curl -LO https://github.com/foss42/apidash/releases/latest/download/apidash-linux-x86_64.rpm
sudo dnf install ./apidash-linux-x86_64.rpm

# Удаление оставшегося rpm
rm -rf apidash-linux-x86_64.rpm

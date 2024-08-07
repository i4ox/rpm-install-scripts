#!/bin/bash

# Проверка зависимостей
[ -x "$(command -v curl)" ] || sudo dnf install curl

# Установка brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Активация brew для текущей сессии терминала
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Установка gcc через brew. Рекомендовано для правильной работы brew
brew install gcc

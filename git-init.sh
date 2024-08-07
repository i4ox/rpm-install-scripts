#!/bin/bash

# Создаем пользователя для git
git config --global user.email "arthurlokhov@gmail.com"
git config --global user.name "asa"

# Устанавливаем ветку по-умолчанию
git config --global init.defaultBranch main

# Устанавливаем Neovim в качестве редактора для git
git config --global core.editor nvim
git config --global core.pager nvimpager
git config --global merge.tool nvimdiff
git config --global diff.external nvimdiff

# Устанавливаем визуальный редактор для git
git config --global alias.visual '!nvim -c Neogit'

# Включаем поддержку цветов в git
git config --global color.ui true

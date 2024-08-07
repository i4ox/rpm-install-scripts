#!/bin/bash

# Проверка зависимостей
[ -x "$(command -v curl)" ] || sudo dnf install curl
[ -x "$(command -v git)" ] || sudo dnf install git
[ -x "$(command -v zsh)" ] || sudo dnf install zsh
[ -x "$(command -v zap)" ] || zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
[ -x "$(command -v alacritty)" ] || sudo dnf install alacritty
[ -x "$(command -v tmux)" ] || sudo dnf install tmux
[ -f ~/.tmux/plugins/tpm/tpm ] || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
[ -x "$(command -v zoxide)" ] || sudo dnf install zoxide
[ -x "$(command -v eza)" ] || sudo dnf install eza

# Создаем все необходимые директории
mkdir $HOME/.config/{zsh,alacritty,tmux}

# Устанавливаем все конфиги для программ
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/config/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/config/tmux/tmux.conf $HOME/.config/tmux/tmux.conf
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/.zshrc $HOME/.zshrc
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/config/zsh/aliases.zsh $HOME/config/zsh/aliases.zsh
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/config/zsh/bindings.zsh $HOME/config/zsh/bindings.zsh
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/config/zsh/completion.zsh $HOME/config/zsh/completion.zsh
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/config/zsh/env.zsh $HOME/config/zsh/env.zsh
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/config/zsh/exports.zsh $HOME/config/zsh/exports.zsh
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/config/zsh/history.zsh $HOME/config/zsh/history.zsh
curl -L https://raw.githubusercontent.com/i4ox/dotfiles/main/config/zsh/plugins.zsh $HOME/config/zsh/plugins.zsh

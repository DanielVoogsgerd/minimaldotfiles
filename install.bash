# VIM

# TODO: Download vim config

# Commentary plugin
mkdir -p ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git ~/.vim/pack/tpope/start/commentary
git clone https://tpope.io/vim/sensible.git ~/.vim/pack/tpope/start/sensible

# Colorschemes
mkdir -p ~/.vim/colors
wget -O ~/.vim/colors/catppuccin_macchiato.vim https://raw.githubusercontent.com/catppuccin/vim/main/colors/catppuccin_macchiato.vim

# Surround
git clone https://tpope.io/vim/surround.git ~/.vim/pack/tpope/start/surround

# Repeat
git clone https://tpope.io/vim/repeat.git ~/.vim/pack/tpope/start/repeat

# TMUX

# TODO: Download tmux config


tmux_plugin_path=$HOME/.config/tmux/plugins

mkdir -p ~/.config/tmux/plugins/catppuccin
git clone https://github.com/catppuccin/tmux.git ${tmux_plugin_path}/catppuccin
git clone https://github.com/tmux-plugins/tmux-sensible ${tmux_plugin_path}/plugins/tmux-sensible
git clone https://github.com/tmux-plugins/tmux-pain-control ${tmux_plugin_path}/tmux-pain-control


# Bash

# TODO: Add hook for custom bash config
# TODO: Custom back config

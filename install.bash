
function download_file() {
    if [ -z "$1" ]; then
        echo "download_file() needs a source parameter"
        exit 1
    fi

    if [ -z "$2" ]; then
        echo "download_file() needs a source parameter"
        exit 1
    fi

    destination_dir="$(dirname "$2")"

    if ! [ -e "$destination_dir" ]; then
        mkdir "$destination_dir"
    fi

    if ! [ -d "$destination_dir" ]; then
        echo "Destination dir is not a valid directory"
        exit 2
    fi

    wget -O "$2" "https://raw.githubusercontent.com/DanielVoogsgerd/minimaldotfiles/main/$1"
}

# VIM
download_file vim .vimrc

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
download_file tmux.conf .tmux.conf

tmux_plugin_path="$HOME/.config/tmux/plugins"

mkdir -p "${tmux_plugin_path}"
git clone https://github.com/catppuccin/tmux.git "${tmux_plugin_path}/catppuccin"
git clone https://github.com/tmux-plugins/tmux-sensible "${tmux_plugin_path}/plugins/tmux-sensible"
git clone https://github.com/tmux-plugins/tmux-pain-control "${tmux_plugin_path}/tmux-pain-control"


# Bash
download_file bashrc .bashrc_custom
if [ -z "$CUSTOM_BASHRC_INSTALLED" ]; then
    echo "source $HOME/.bashrc_custom" >> .bashrc
fi

export CUSTOM_BASHRC_INSTALLED=yes
# TODO: Add hook for custom bash config
# TODO: Custom back config

#!/bin/bash
export CUSTOM_BASHRC_INSTALLED=yes

alias ".."=cd ../
alias "..."=cd ../../
alias "...."=cd ../../../
alias "....."=cd ../../../../

alias g=git

function update_dotfiles() {
    curl "https://raw.githubusercontent.com/DanielVoogsgerd/minimaldotfiles/main/install.bash" | bash
}

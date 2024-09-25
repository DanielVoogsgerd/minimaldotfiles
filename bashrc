#!/bin/bash
export CUSTOM_BASHRC_INSTALLED=yes

# bind 'TAB:menu-complete'
bind 'set show-all-if-ambiguous on'

alias ".."="cd ../"
alias "..."="cd ../../"
alias "...."="cd ../../../"
alias "....."="cd ../../../../"

alias g=git

if ! command -v nvim &> /dev/null
then
    alias vim=nvim
fi

function update_dotfiles() {
    curl "https://raw.githubusercontent.com/DanielVoogsgerd/minimaldotfiles/main/install.bash" | bash
}

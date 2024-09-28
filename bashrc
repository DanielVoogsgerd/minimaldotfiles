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
    alias nvim=vim
fi

function update_dotfiles() {
    curl "https://raw.githubusercontent.com/DanielVoogsgerd/minimaldotfiles/main/install.bash" | bash
}

export LESS_TERMCAP_mb=$'\e[1;35m'
export LESS_TERMCAP_md=$'\e[1;34m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;36m'
export GROFF_NO_SGR=yes
export LESS='-F -i -J -M -R -W -x4 -X -z-4'

PATH="${HOME}/.local/bin:${PATH}"

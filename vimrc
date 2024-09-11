inoremap jj <ESC>

vnoremap > >gv
vnoremap < <gv

nnoremap j gj
nnoremap k gk

let mapleader=" "

set termguicolors
colorscheme catppuccin_macchiato

" I am not certain how stable this will really be across terminal emulators
" and multiplexers, but we will see
if $TERM ==# 'alacritty' || $TERM =~# '-256color$'
	let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
	let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
endif

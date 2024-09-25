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

set relativenumber
set number
set cursorcolumn " Highlight the current column
set cursorline " Highlight the current line
set signcolumn="auto:4" "Make the signcolumn min 4 wide and scale if needed
set ignorecase " Be case insensitive when searching
set smartcase " Be case sensitive if we search with capitals
set shortmess="I"
set undofile
set shiftwidth=4
set expandtab
set tabstop=4

set undodir=~/.local/share/vim/undo

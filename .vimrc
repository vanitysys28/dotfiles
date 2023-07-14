syntax on

call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark
set term=xterm-256color
set termguicolors

set ignorecase 
set incsearch
set hlsearch

set mouse=a

nnoremap <silent><CR> :noh<CR>

set nowritebackup
set noswapfile
set nobackup

map <c-c> ggVG"*y


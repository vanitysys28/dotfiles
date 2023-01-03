syntax on

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
call plug#end()

set background=dark
colorscheme gruvbox
set termguicolors
set term=xterm-256color
set incsearch
set hlsearch
" Clear search highlight by hitting enter
nnoremap <silent> <CR> :noh<CR>

set ignorecase 
set nowritebackup
set noswapfile
set nobackup

let g:prettier#autoformat = 1

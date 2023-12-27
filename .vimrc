set number relativenumber
set smarttab
set shiftwidth=4 tabstop=4 softtabstop=4
set smartcase
set hlsearch
set showmatch
set magic
set lbr
set tw=200
set ai
set si
set wrap
set mouse=a
set splitright
syntax on
set t_ut=                " fix 256 colors in tmux http://sunaku.github.io/vim-256color-bce.html

if has("termguicolors")  " set true colors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

let mapleader = "\<space>"

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

colorscheme catppuccin_mocha
"NERDTree
let NERDTreeShowHidden=1
"airline
let g:airline#extension#tabline#enabled=1
let g:airline#extension#tabline#fnamemode=':t'


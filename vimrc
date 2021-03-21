execute pathogen#infect()
syntax on
filetype plugin indent on

set updatetime=250

:nmap <silent> <C-W> :wincmd w <CR>
:let NERDTreeShowHidden=1

let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#wordcount#enabled=1
let g:airline_powerline_fonts=1
set noshowmode

set termguicolors
colorscheme gruvbox
set background=light
let g:gruvbox_contrast_light='hard'

set cursorline
set number
set showmatch

set autoindent
set linebreak
set shiftwidth=2
set smartindent

let mapleader=','
:nmap <Leader>x :%s/\s\+$//e
:nmap <Leader>f :Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

:nmap <Leader>i gg=G

set backspace=indent,eol,start
set belloff=all
set history=100
set noswapfile
set wildmenu

set hlsearch
set ignorecase
set incsearch
set smartcase

set smarttab
set tabstop=2

autocmd FileType markdown,text DittoOn
:nmap <Leader>d :ToggleDitto

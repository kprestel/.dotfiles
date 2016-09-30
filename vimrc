set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'powerline/powerline'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'helino/vim-json'
Plug 'junegunn/vim-easy-align'
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'crusoexia/vim-monokai'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'wesQ3/vim-windowswap'
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'walm/jshint.vim'
Plug 'othree/html5-syntax.vim'
Plug 'othree/html5.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ap/vim-css-color'
Plug 'dag/vim-fish'
call plug#end()

set hlsearch
set term=screen-256color
set incsearch
set mouse=a
set wildmenu
set ignorecase
set complete=.,w,b,u,t,i,kspell
set wrap
set textwidth=0 wrapmargin=0
set textwidth=85
set rnu
set number
set history=1000
set shortmess+=c
try
	set undodir=~/.vim_runtime/temp_dirs/undodir
	set undofile
catch
endtry

set so=7
set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si




"set colorcolumn=+5

" number lines
colo monokai 
syntax on
" highline current line
set cursorline
" backspace and cursor keys wrap to previous/next line
" set backspace=indent,eol,start whichwrap+=<,>,[,]

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

filetype plugin on
filetype indent on
" Use CTRL-S for saving, also in Insert mode
noremap <C-S>   :update<CR>
vnoremap <C-S><C-C>     :update<CR>
inoremap <C-S><C-O>     :update<CR>

" CTRL-Y is Redo (although not repeat); not in cmdline though
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

imap jk <ESC>
imap kj <ESC>
vmap v <ESC>

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:javascript_plugin_jsdoc = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_check_on_open = 1

:autocmd FileType fish compiler fish

if &shell =~# 'fish$'
	set shell=sh
endif


"":autocmd BufWritePost * call system("ctags -R")

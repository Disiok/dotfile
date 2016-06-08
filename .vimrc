set shell=/bin/bash
set nocompatible              " Be iMproved, required
filetype off                  " Required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Custom plugins
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wincent/command-t'

" All of your Plugins must be added before the following line
call vundle#end()            " Required
filetype plugin indent on    " Required

" Key mappings
let mapleader = ","
inoremap jk <ESC>
nnoremap <leader><space> :nohlsearch<CR>

" Movement
" Move vertically by visual line
nnoremap j gj
nnoremap k gk
" Move to beginning and end of line
nnoremap B ^
nnoremap ^ <nop>
nnoremap E $
nnoremap $ <nop>

" Searching
set hlsearch        " Highlight matches
set incsearch       " Search as characters are entered
set ignorecase

" General
set title
set laststatus=2

" UI
set number          " Show line numbers
set cursorline      " Highlight current line
set wildmenu        " Visual autocomplete for command menu
set colorcolumn=80  " Highlight overflow column

" Colors
colorscheme desert
syntax enable

" Tabbing behaviour
set tabstop=4       " Number of visual spaces per tab
set shiftwidth=4    " Number of spaces for indent and unindent
set softtabstop=4   " Number of spaces in tab when editing
set expandtab       " Tabs are spaces

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" NERDTree 
" Open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Map specific key to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

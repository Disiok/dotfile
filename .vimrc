set shell=/bin/bash
set nocompatible              " Be iMproved, required
filetype off                  " Required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Custom plugins
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " Required
filetype plugin indent on    " Required

" Non-Plugin settings
inoremap jk <ESC>
let mapleader = ","
syntax enable
set number
set title
set hlsearch
set incsearch
set laststatus=2
set colorcolumn=80
color desert

" Setting tabbing behaviour
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Setting for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Auto-open NERDTree and focus cursor in new document
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

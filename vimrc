" set tab to 4 space
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" set relative line number
set relativenumber

" set syntax highlight
filetype plugin on
syntax on

" powerline configuration
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim
let g:powerline_pycmd="py3"
set laststatus=2

" avoid vundle error caused by non-POSIX shell
set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" theme plugin - oceanic next
Bundle 'mhartington/oceanic-next'

" vim-tmux nagivator
Plugin 'christoomey/vim-tmux-navigator'

" powerline plugin - DEPRECATED: installed powerline from arch linux community
" repo
" Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" theme setting
if (has("termguicolors"))
    set termguicolors
endif

colorscheme OceanicNext

" modity the background-color of theme - DEPRECATED: modify the theme directly
" hi Normal guibg=#293340
" hi LineNr guibg=#293340

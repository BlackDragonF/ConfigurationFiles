" +----------------------------------------------------+
" | vim configuration file                             |
" |                                                    |
" | CoSidian - created at 2017/12                      |
" +----------------------------------------------------+

" Plugin Manager - Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" color scheme bundle - oceanic next
Bundle 'mhartington/oceanic-next'

" vim-tmux nagivator plugin
Plugin 'christoomey/vim-tmux-navigator'

" nerd tree plugin
Plugin 'scrooloose/nerdtree'

" you-complete-me plugin
Plugin 'Valloric/YouCompleteMe'

" ultisnips plugin(snippet engine)
Plugin 'Sirver/ultisnips'

" snippets
Plugin 'honza/vim-snippets'

" autoformat plugin
Plugin 'Chiel92/vim-autoformat'

" comment plugin
Plugin 'scrooloose/nerdcommenter'

" taglist plugin
Bundle 'taglist.vim'
" post installation - pacman -S ctags

" quotes/parents/brackets auto-completion plugin
Bundle 'Raimondi/delimitMate'

" tied vim to repl
Bundle 'jpalardy/vim-slime'

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

" avoid vundle error caused by non-POSIX shell
set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off                  " required

" color scheme
if (has("termguicolors"))
    set termguicolors
endif

colorscheme OceanicNext

" modity the background-color of theme - DEPRECATED: modify the theme directly
" hi Normal guibg=#293340
" hi LineNr guibg=#293340

" general settings
" set tab to 4 spaces
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

" nerd tree configuration
" opens nerdtree automatically when no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" you-complete-me configuration
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" snippets configuration
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" autoformat configuration
let g:formatdef_custom_clang = "'clang-format -style=file'"
let g:formatters_c = ['custom_clang']
let g:formatters_cpp = ['custom_clang']

" nerd commenter configuration
" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" vim-slime configuration
let g:slime_no_mappings = 1
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "tmux_scheme", "target_pane":":.1"}
let g:slime_dont_ask_default = 1
let g:slime_preserve_curpos = 0
let g:slime_paste_file = "$HOME/.slime_paste"

" key map
map <C-n> :NERDTreeToggle<CR>

noremap <Tab> :Autoformat<CR>

map <S-t> :TlistToggle<CR>

xmap <F5> <Plug>SlimeRegionSend
nmap <F5> <Plug>SlimeParagraphSend
nmap <F6> <Plug>SlimeConfig

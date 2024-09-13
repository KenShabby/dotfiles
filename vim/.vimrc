set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'takac/vim-hardtime'

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

" Syntax highlighting
syntax on

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Beter Copy & paste
set pastetoggle=<F2>
set clipboard=unnamed
set rtp+=/usr/local/opt/fzf
set t_Co=256

colorscheme atom-dark-256

set foldmethod=indent

set foldlevel=99

nnoremap <space> za

au BufNewFile, BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=79
	\set expandtab
	\set autoindent
	\set fileformat=unix

let g:ale_linters = {'python' : ['flake8']}

set number
set relativenumber
set colorcolumn=80
set nowrap
set hlsearch

" remap esc to kj
inoremap kj <Esc>

" Vim hardtime stops lazy use of jjjjjj kkkkkkkk to move around
let g:hardtime_default_on = 1

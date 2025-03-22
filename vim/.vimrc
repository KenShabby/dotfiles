set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader=','
let maplocalleader='\\'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8' " Python syntax checker
"Plugin 'davidhalter/jedi-vim' " Code completion
Plugin 'ycm-core/YouCompleteMe' " More code completion
Plugin 'vim-scripts/indentpython.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plugin 'junegunn/fzf.vim'
"Plugin 'tpope/vim-projectionist'

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
" YouCompleteMe customizations:
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" " Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Beter Copy & paste
set pastetoggle=<F2>
set clipboard=unnamedplus
set rtp+=/usr/local/opt/fzf
set t_Co=256

colorscheme atom-dark-256

set foldmethod=indent
set foldlevel=99
nnoremap <space> za
nnoremap <C-p> :Files<Cr>
nnoremap <enter> i<enter><esc>
inoremap <C-a> <home>
inoremap <C-e> <end>

" Python settings
au BufNewFile, BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=79
	\set expandtab
	\set autoindent
	\set fileformat=unix

set ts=4 sw=4

set encoding=utf-8

let g:ale_linters = {'python' : ['flake8']}

set number
set relativenumber
set colorcolumn=80
set nowrap
set hlsearch
set incsearch
set wildmode=longest,list,full " Tab completion
set wildmenu
set showcmd

" remap esc to kj
inoremap kj <Esc>
vnoremap kj <Esc>

" some more of my remaps
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" Fix my common typos
:iabbrev THanks Thanks

" C/C++ ale settings
" CPP-SETTINGS:" Lint .h files as C++, not C
let g:ale_pattern_options_enabled = 1
let g:ale_pattern_options = { '\.h$': { 'ale_linters': { 'cpp' : ['cc', 'gcc', 'clang'] } } }

" Set flags for gcc/clang
let cpp_opts = '-std=c++20 -Wall -Wextra'
let g:ale_linters = { 'cpp': ['cc', 'gcc', 'clang'] }
let g:ale_cpp_cc_options    = cpp_opts
let g:ale_cpp_gcc_options   = cpp_opts
let g:ale_cpp_clang_options = cpp_opts

" Brendan messing around with fzf path insert

set nocompatible
filetype off

call plug#begin('~/.vim/bundle/plug')

Plug 'scrooloose/nerdcommenter'

" Syntax Highlighting + Other Niceties 

Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-rails'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'mustache/vim-mustache-handlebars'
Plug 'airblade/vim-gitgutter'
Plug 'elixir-lang/vim-elixir'
Plug 'ekalinin/Dockerfile.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-endwise'

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

syntax on
syntax enable
set bg=dark
colorscheme gruvbox

" General Config

set autoread
set cursorline
set directory=/tmp
set expandtab
set foldmethod=indent
set hlsearch
set incsearch
set lazyredraw
set list
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set nofoldenable
set nowrap
set number
set scrolloff=999


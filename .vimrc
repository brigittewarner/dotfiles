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
Plug 'junegunn/vim-easy-align'

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
set noswapfile
"This was causing issues with pasting into sql so it's probably more trouble
"than its worth
"set list
"set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set nofoldenable
set nowrap
set number
set scrolloff=999 " Hack to set cursor to middle of the screen

" Remap Esc
imap jk <Esc>

"insert and remove comments in visual and normal mode
vmap <Space>cc :s/^/#/g<CR>:let @/ = ""<CR>
map  <Space>cc :s/^/#/g<CR>:let @/ = ""<CR>
vmap <Space>cu :s/^#//g<CR>:let @/ = ""<CR>
map  <Space>cu :s/^#//g<CR>:let @/ = ""<CR>

" insert pry
:ia pry require IEx; IEx.pry

" Tab correctly
set tabstop=2

" Delete character should not squash paste buffer
nnoremap <silent> x "xx
vnoremap <silent> x "xx

" Automatically resize panes when the terminal is resized
autocmd VimResized * :wincmd =

" Start interactive EasyAlign in visual mode
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object
nmap ga <Plug>(EasyAlign)

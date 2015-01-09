" Defaults 
set number                        " Mostrar números de linea
set hidden                        " Mejor manejo de buffers
set nocompatible                  " sin compatibilidad con vi 
set go-=T                         " Borrar la barra de menu
syntax on                         " Activar el resaltado de sintaxis
"set lines=45 columns=150          " Window dimensions.
set guioptions-=r                 " Don't show right scrollbar
set wildmenu
set wildmode=list:longest         " Completar nombres de archivos
set smartindent
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle "nathanaelkane/vim-indent-guides"
Bundle 'Raimondi/delimitMate'
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'claco/jasmine.vim'
"Bundle 'cakebaker/scss-syntax.vim'
"Bundle 'ervandew/supertab'
"Bundle 'gmarik/sudo-gui.vim'
"Bundle 'itspriddle/vim-jquery'
Bundle 'jacquesbh/vim-showmarks'
"Bundle 'mirell/vim-matchit'
"Bundle 'msanders/snipmate.vim'
Bundle 'nanotech/jellybeans.vim'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-endwise'
"Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/Enter-Indent'
Bundle 'vim-scripts/L9'
"Bundle 'xolox/vim-session'
Bundle "vim-scripts/LustyExplorer"
Bundle "vim-scripts/FuzzyFinder"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['jshint']
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set autoindent
set encoding=utf-8
filetype on
filetype plugin on
filetype indent on
"Las lineas cortadas tienen indicador
set wrap linebreak nolist
set showbreak=> 
set laststatus=2             " Status line for vim airline

" Tabulaciones
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab

" Mejores búsquedas
  set incsearch
  set ignorecase
  set smartcase

" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

set linespace=2
set antialias

" ----------- Mappings ---------------

let mapleader = ","          " Cambiar el map leader
nmap <space> :
"Guardado rápido
  nmap <C-s> :w!<cr>
  imap <C-s> jj :w!<cr>
" Cambiar el search
  nmap ff /
"Cambiar command mode
  imap jj <esc>
" Mover la linea hacia abajo y arriba
  nmap <C-k> :m-2<cr>
  nmap <C-j> :m+<cr>
"Shortcut for editing  vimrc file in a new tab
  nmap ,ev :edit $MYVIMRC<cr>
" easier window navigation
  nmap <C-h> <C-w>h
  nmap <C-l> <C-w>l
" Para autocomplete
  imap <TAB> <C-n>
" Cambiar al buffer reciente
  nmap <leader>b :b#<cr>

" ----------- Plugin Mappings ----------
nmap <TAB> :NERDTreeToggle<CR>
nmap <leader><TAB> :FufBuffer<CR>

" ----------- Plugin Config ------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '

let g:used_javascript_libs = 'underscore,angularjs,requirejs,jasmine,jquery'

let g:syntastic_eslint_exec='/usr/local/bin/eslint'
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

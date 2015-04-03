"====== Plugins using Vundle ==========
source ~/.vimconfig/plugins.vim
source ~/.vimconfig/mappings.vim

set nocompatible              " be iMproved, required

" ==========================================================

filetype on
filetype plugin on
filetype indent on
syntax on                         " Activar el resaltado de sintaxis

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype jade setlocal ts=2 sts=2 sw=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Turn on the WiLd menu
set wildmenu
"Always show current position
set ruler
" Height of the command bar
set cmdheight=1
" A buffer becomes hidden when it is abandoned
set hidden
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Search
set incsearch
set ignorecase
set smartcase
" Don't redraw while executing macros (good performance config)
set lazyredraw 
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set number                      " Mostrar números de linea
set go-=T                         " Borrar la barra de menu
"set lines=45 columns=150         " Window dimensions.
set guioptions-=r                 " Don't show right scrollbar
set wildmenu
set wildmode=list:longest         " Completar nombres de archivos
set smartindent
set autoindent
set encoding=utf-8

set showbreak=                    "Las lineas cortadas tienen indicador
set wrap linebreak nolist
set laststatus=2                  " Status line for vim airline
set noswapfile                    " Remove swap files

" performance test
set nocursorcolumn
set nocursorline
syntax sync minlines=256
let g:loaded_matchparen = 1

"Ever notice a slight lag after typing the leader key + command? This lowers the timeout.
set timeoutlen=500
" NOTE: use arrow keys for quick buffer/window navigation                                             
noremap <silent> <left> :bprevious<cr>
noremap <silent> <right> :bnext<cr>

set linespace=2
set antialias
set spelllang=es
" set spelllang=en

" Gdiff vertical
set diffopt+=vertical


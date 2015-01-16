set nocompatible              " be iMproved, required
filetype off                  " required

" ======================= Vundle Config =======================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ------------- Helpers --------------- 
Bundle 'jacquesbh/vim-showmarks'
Bundle 'mattn/emmet-vim'
Bundle "Yggdroot/indentLine"
Bundle 'Raimondi/delimitMate' 
Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'vimoutliner/vimoutliner'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/L9'
Bundle 'SirVer/ultisnips'

" ------------- Snipmate ----------------
" Bundle 'MarcWeber/vim-addon-mw-utils'
" Bundle 'tomtom/tlib_vim'
" Bundle 'msanders/snipmate.vim'

" ------------ Syntax Related ------------ 
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/Enter-Indent'
Bundle 'groenewege/vim-less'
Plugin 'Chiel92/vim-autoformat'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'briancollins/vim-jst'
Bundle 'digitaltoad/vim-jade'
Bundle 'plasticboy/vim-markdown'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'claco/jasmine.vim'

"------------- File navigation -----------
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'dkprice/vim-easygrep'
Bundle 'ctrlp.vim'
Bundle 'dbakker/vim-projectroot'

"-------------- Color Schemes ------------ 
" Bundle 'nanotech/jellybeans.vim'
" Bundle 'altercation/vim-colors-solarized'
Bundle 'sickill/vim-monokai'
" ------------- Unused --------------------
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'xolox/vim-session'
"Bundle 'cakebaker/scss-syntax.vim'
"Bundle 'ervandew/supertab'
"Bundle 'gmarik/sudo-gui.vim'
"Bundle 'itspriddle/vim-jquery'
"Bundle 'mirell/vim-matchit'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['jshint']

" ==========================================================

filetype on
filetype plugin on
filetype indent on
syntax on                         " Activar el resaltado de sintaxis

set backspace=2                  "Make backspace work on windows

set number                      " Mostrar números de linea
" set relativenumber                " Mostrar numeros de linea relativos
set hidden                        " Mejor manejo de buffers
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

" Tabulaciones
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd Filetype jade setlocal ts=2 sts=2 sw=2

" Mejores búsquedas
set incsearch
set ignorecase
set smartcase

set linespace=2
set antialias
set spelllang=es
set shell=/bin/bash
" set spelllang=en

" ----------- Mappings ---------------

let mapleader = ","          " Cambiar el map leader
nmap j gj
nmap k gk
nmap <space> :
nmap <C-s> :w!<cr>
"Guardado rápido
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
"indentar en insert mode
imap <S-Tab> <C-t>
" Para autocomplete
" imap <TAB> <C-n>
" Cambiar al buffer reciente
nmap <leader>b :b#<cr>
"spelling check
nmap <silent> <leader>s :set spell!<CR>
"Search using easygrep
nmap <leader>g :vim /<C-r><C-w>/ **/*.js<C-B><C-right><C-right><left>
"Source VIM
nmap <leader>sv :source $MYVIMRC<cr>
nmap <leader>svg :source $MYGVIMRC<cr>

" ----------- Plugin Mappings ----------
nmap <leader><TAB> :NERDTreeToggle<CR>
map <TAB> :FufBuffer<CR>
"Autoformat all the code
nmap <leader>fc :Autoformat<cr>
" nnoremap <leader>g :ProjectRootExe grep -F<space>
nmap <leader>m :DoShowMarks<CR>
nmap <leader>mn :NoShowMarks<CR>
"mapping for emmet
imap <leader>e <C-y>,
"buffkill
nmap <leader>d :BD<cr>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" ----------- Plugin Config ------------
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename = 1
let g:ctrlp_max_height = 8
let g:ctrlp_map = '<c-p>'
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|)$'
" let g:ctrlp_custom_ignore = '\v[\/](bower_components|node_modules)$'
set wildignore+=*/tmp/*,*/logs/*,*/bower_components/*,*/node_modules/*,*.so,*.swp,*.zip     " Linux/MacOSX
" set wildignore+=*\\tmp\\*,*\logs\*,*\bower_components\*,*\node_modules\*,*.swp,*.zip,*.exe  " Windows
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"Automatically change the wd to the project root
function! <SID>AutoProjectRootCD()
  try
    if &ft != 'help'
      ProjectRootCD
    endif
  catch
    " Silently ignore invalid buffers
  endtry
endfunction

autocmd BufEnter * call <SID>AutoProjectRootCD()

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#left_sep = ' '

let g:used_javascript_libs = 'underscore,angularjs,requirejs,jquery'

let g:syntastic_eslint_exec='/usr/local/bin/eslint'
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Gdiff vertical
set diffopt+=vertical


" ======================= Vundle Config =======================
filetype off                  " required

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
Bundle 'terryma/vim-multiple-cursors'
Bundle 'mileszs/ack.vim'
Bundle 'burnettk/vim-angular'
"Vim session
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'

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
Bundle 'sickill/vim-monokai'
" ------------- Unused --------------------
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'cakebaker/scss-syntax.vim'
"Bundle 'ervandew/supertab'
"Bundle 'gmarik/sudo-gui.vim'
"Bundle 'itspriddle/vim-jquery'
"Bundle 'mirell/vim-matchit'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"======================================================================

" ----------- Plugin Config ------------
" Sesiones
let g:session_autoload='no'
let g:session_autosave='yes'
let g:session_directory="~/Copy/configs/vim/sessions"
let g:session_default_to_last=1
set sessionoptions-=tabpages

" set sessionoptions-=help
set sessionoptions-=resize,winpos
set sessionoptions-=option 
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename = 1
let g:ctrlp_max_height = 8
let g:ctrlp_map = '<c-p>'
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|)$'
" let g:ctrlp_custom_ignore = '\v[\/](bower_components|node_modules)$'
set wildignore+=*/tmp/*,*/logs/*,*/bower_components/*,*/node_modules/*,*.so,*.swp,*.zip,bower     " Linux/MacOSX
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

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_detect_modified=1

let g:used_javascript_libs = 'underscore,angularjs,requirejs,jquery'

" Sesiones
let g:session_autoload='yes'
let g:session_autosave='yes'
let g:session_directory="~/Dropbox/Config/vim/sessions"
set sessionoptions-=tabpages
set sessionoptions-=resize,winpos
set sessionoptions-=option 

let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_eslint_exec='/usr/local/bin/eslint'
let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_eslint_exec='/usr/local/bin/eslint'
" let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

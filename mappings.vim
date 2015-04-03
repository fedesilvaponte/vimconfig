" ----------- Mappings ---------------

let mapleader = ","          " Cambiar el map leader

nmap j gj
" Auto add semicolon
inoremap ;<TAB> <end>;<cr>
nmap k gk
nmap <space> :
"Guardado rápido
imap <C-s> jj :w!<cr>
nmap <C-s> :w!<cr>
" Cambiar el search
nmap ff /
"Cambiar command mode
imap jj <esc>
" Mover la linea hacia abajo y arriba
" nmap <C-k> :m-2<cr>
" nmap <C-j> :m+<cr>
"Shortcut for editing  vimrc file in a new tab
nmap ,ev :edit ~/.vimconfig/vimrc<cr>
" easier window navigation
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
"indentar en insert mode
imap <S-Tab> <C-t>
" Para autocomplete con omni
imap <TAB> <C-x><C-o>
" Cambiar al buffer reciente
nmap <leader>b :b#<cr>
nmap <leader>n :bnext<CR>
nmap <leader>p :bprev<CR>
"spelling check
nmap <silent> <leader>s :set spell!<CR>
"Search using easygrep
nmap <leader>s :Ack <C-r><C-w> --type=js<C-B><C-right><C-right><left>
"Source VIM
nmap <leader>sv :source $MYVIMRC<cr>
nmap <leader>svg :source $MYGVIMRC<cr>

" ----------- Plugin Mappings ----------
"abrir session
nmap <C-O> :OpenSession 

nmap <leader><TAB> :NERDTreeToggle<CR>
map <TAB> :FufBuffer<CR>
nmap <TAB> :NERDTreeToggle<CR>
map <leader><TAB> :FufBuffer<CR>
"abrir session
nmap <C-O> :OpenSession 
" map <leader>b :CtrlPBuffer<CR>
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

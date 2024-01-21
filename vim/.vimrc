" General configs
let mapleader=" "
set number
set relativenumber
set shiftwidth=4 smarttab
set expandtab
set tabstop=8 softtabstop=0
nnoremap <SPACE> <Nop>
vnoremap <SPACE> <Nop>

" Commands
command So :source ~/.vimrc

" Mapping Ubuntus Alt key ^[ + movement 
map <Esc>j <A-j>
map <Esc>k <A-k>
map <Esc>J <A-J>
map <Esc>K <A-K>

" Tree config
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 15


"# Key maps
"## Move/duplicate selected line
nnoremap <A-k> :m-2<CR>
nnoremap <A-j> :m+1<CR>
nnoremap <A-J> Yp
nnoremap <A-K> YP
xnoremap <A-k> :m-2<CR>gv
xnoremap <A-j> :m'>+<CR>gv
xnoremap <A-K> YP`[v`]
xnoremap <A-J> Ygv<Esc>p`[v`]
"## souround current word with \"
nnoremap <leader>" ciw"<Esc>pa"<Esc>


nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

"## Files
nnoremap <C-s> :w<CR>
"## Pane navigation
nnoremap <leader>dd :Lexplore %:p:h<CR>
nnoremap <leader>da :Lexplore<CR>
"## Vim Visual Mulit
"let g:VM_default_mappings = 0
let g:VM_maps = {}
let g:VM_maps['Find Under']             = '<C-d>'
let g:VM_maps['Find Subword Under']     = '<C-d>'
let g:VM_maps['Select Cursor Up']       = '<C-k>'
let g:VM_maps['Select Cursor Down']     = '<C-j>'

"# Plugins
call plug#begin()
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

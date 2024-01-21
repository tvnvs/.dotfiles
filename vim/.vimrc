"# Plugins
call plug#begin()
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tomasiser/vim-code-dark'
call plug#end()

" General configs
let mapleader=" "
set number
set relativenumber
set shiftwidth=4 smarttab
set expandtab
set tabstop=8 softtabstop=0
set so=999 
nnoremap <SPACE> <Nop>
vnoremap <SPACE> <Nop>
set background=dark
set t_Co=256
set t_ut=
colorscheme codedark
" timeout delay
set timeoutlen=505
set ttimeoutlen=0

" Commands
command So :source ~/.vimrc
"
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
"## Movement
nnoremap <leader>l $
xnoremap <leader>l $<Left>
nnoremap J <C-f>zz
nnoremap K <C-b>zz
nnoremap <leader>h ^
xnoremap <leader>h ^
"## Move/duplicate selected line
nnoremap <A-k> :m-2<CR>
nnoremap <A-j> :m+1<CR>
nnoremap <A-J> Yp
nnoremap <A-K> YP
xnoremap <A-k> :m-2<CR>gv
xnoremap <A-j> :m'>+<CR>gv
xnoremap <A-K> YP`[v`]
xnoremap <A-J> Ygv<Esc>p`[v`]
"## souround current word/selection
nnoremap <leader>" ciw"<Esc>pa"<Esc>
nnoremap <leader>' ciw'<Esc>pa'<Esc>
nnoremap <leader>( ciw(<Esc>pa)<Esc>
nnoremap <leader>{ ciw{<Esc>pa}<Esc>
nnoremap <leader>[ ciw[<Esc>pa]<Esc>

xnoremap <leader>" xA"<CR>"<Esc>P
xnoremap <leader>' xA'<CR>'<Esc>P
xnoremap <leader>( xA(<CR>)<Esc>P
xnoremap <leader>{ xA{<CR>}<Esc>P
xnoremap <leader>[ xA[<CR>]<Esc>P


nnoremap <leader>O O<Esc>
nnoremap <leader>o o<Esc>
nnoremap <leader><SPACE> i<SPACE><Esc>

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

"## Fzf
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }


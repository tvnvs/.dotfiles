"# Plugins
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Searching
Plug 'tomasiser/vim-code-dark'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
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
"## Global
inoremap <C-q> <Esc>
vnoremap <C-q> <Esc>
nnoremap <C-q> :q<CR>
"
inoremap <C-l> <Del>
"## Movement
nnoremap L $
xnoremap L $<left>
nnoremap J <C-f>zz
nnoremap K <C-b>zz
nnoremap H ^
xnoremap H ^
"### Tab Movement
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

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
" nnoremap <leader>" ciw"<Esc>pa"<Esc>
" nnoremap <leader>' ciw'<Esc>pa'<Esc>
" nnoremap <leader>( ciw(<Esc>pa)<Esc>
" nnoremap <leader>{ ciw{<Esc>pa}<Esc>
" nnoremap <leader>[ ciw[<Esc>pa]<Esc>
nnoremap <leader>" :execute "normal \<Plug>Ysurroundiw\""<CR>
nnoremap <leader>s" :execute "normal \<Plug>Yssurround\""<CR>
nnoremap <leader>' :execute "normal \<Plug>Ysurroundiw'"<CR>
nnoremap <leader>s' :execute "normal \<Plug>Yssurroundw'"<CR>
nnoremap <leader>( :execute "normal \<Plug>Ysurroundiw)"<CR>
nnoremap <leader>s( :execute "normal \<Plug>Yssurroundw)"<CR>
nnoremap <leader>{ :execute "normal \<Plug>Ysurroundiw}"<CR>
nnoremap <leader>s{ :execute "normal \<Plug>Yssurroundw}"<CR>
nnoremap <leader>[ :execute "normal \<Plug>Ysurroundiw]"<CR>
nnoremap <leader>s[ :execute "normal \<Plug>Yssurroundw]"<CR>

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


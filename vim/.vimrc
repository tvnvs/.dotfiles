" General configs
let mapleader=" "
set relativenumber
nnoremap <SPACE> <Nop>

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
let g:netrw_browse_split = 2
let g:netrw_winsize = 15


"# Key maps
"## Move/duplicate selected line
nnoremap <A-j> :m +1 <CR>
nnoremap <A-J> Yp
nnoremap <A-k> :m -2 <CR> 
nnoremap <A-K> YP
"## souround current word with \"
nnoremap <leader>" ciw"<Esc>pa"<Esc>


nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

"Pane navigation
nnoremap <leader>dd :Lexplore %:p:h<CR>
nnoremap <leader>da :Lexplore<CR>

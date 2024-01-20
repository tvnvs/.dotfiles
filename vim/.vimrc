let mapleader=" "
" test "som
command So :source ~/.vimrc
map <Esc>j <A-j>
map <Esc>k <A-k>
map <Esc>J <A-J>
map <Esc>K <A-K>

nnoremap <A-j> :m +1 <CR>
nnoremap <A-J> Yp
nnoremap <A-k> :m -2 <CR> 
nnoremap <A-K> YP

nnoremap <leader>" ciw"<Esc>pa"<Esc>
nnoremap <SPACE> <Nop>

nnoremap <leader>o o<Esc>

" Vertical bar in insert mode  
let &t_SI = "\<Esc>[6 q"
" Underline in replace mode
let &t_SR = "\<Esc>[4 q"
" Block in other modes
let &t_EI = "\<Esc>[2 q"

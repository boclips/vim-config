let mapleader=","

map <leader>f :CommandT<CR>
map <leader>/   <plug>NERDCommenterToggle
map <leader>u :GundoToggle<CR>

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l


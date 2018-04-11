let mapleader=","
let maplocalleader=","

map <leader>u :GundoToggle<cr>

" Ack current word
nmap <leader>a *:AckFromSearch<cr>

" quick save/close/tab
nmap <leader>s :w<cr>
nmap <leader>q :q<cr>

nmap <leader>d Irequire 'pry'; binding.pry<cr><esc>
" remove print
nmap <leader>D dt(%ldt)h%

nmap <c-c> "*ya(

nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j

nnoremap <silent> <f5> :make<cr>
imap <f5> <esc><f5>

let mapleader=","

map <leader>u :GundoToggle<cr>
" map <leader>t :!ctags -e --exclude=.git --exclude='*.log' -R * `bundle show --paths`<cr><cr>
map <leader>t :!ctags -e --exclude=.git --exclude='*.log' -R *<cr><cr>
" nnoremap <leader>t :call RunTestFile()<cr>

nmap <leader>e :CtrlPMRUFiles<cr>

" Ag current word
nmap <leader>a *:AgFromSearch<cr>

" quick save/close/tab
nmap <leader>s :w<cr>
nmap <leader>q :q<cr>
nmap <leader>T :tabnew<cr>

" print result of a form
nmap <leader>d i(doto <esc>l%a println)<esc>%
" remove print
nmap <leader>D dt(%ldt)h%

nmap <c-c> "*ya(

" format golang
nmap <leader>f :Fmt<cr>

nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j

let mapleader=","

map <leader>u :GundoToggle<cr>
map <leader>t :!ctags -e --exclude=.git --exclude='*.log' -R * `bundle show --paths`<cr>

nmap <leader>e :CtrlPMRUFiles<cr>

" Ag current word
nmap <leader>a *:AgFromSearch<cr>

" easy window movement
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

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

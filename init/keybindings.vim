let mapleader=","
let maplocalleader=","

map <leader>u :GundoToggle<cr>
" map <leader>t :!ctags -e --exclude=.git --exclude='*.log' -R * `bundle show --paths`<cr><cr>
map <leader>t :!ctags -e --exclude='Carthage' --langmap=ObjectiveC:.m.h -R *<cr><cr>

" nnoremap <leader>t :call RunTestFile()<cr>

nmap <leader>e :CtrlPMRUFiles<cr>

" Ack current word
nmap <leader>a *:AckFromSearch<cr>

" quick save/close/tab
nmap <leader>s :w<cr>
nmap <leader>q :q<cr>
nmap <leader>T :tabnew<cr>

" print result of a form
nmap <leader>d i(doto <esc>l%a println)<esc>%
" remove print
nmap <leader>D dt(%ldt)h%

nmap <c-c> "*ya(

nnoremap <silent> <C-l> <c-w>l
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-j> <c-w>j

nnoremap <silent> <f5> :make<cr>
imap <f5> <esc><f5>

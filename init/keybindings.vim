let mapleader=","

map <leader>/   <plug>NERDCommenterToggle
map <leader>u :GundoToggle<cr>
map <leader>t :!ctags -R --langmap="ruby:+.rake.builder.rjs" .<cr>

" fuzzy file finding with Ctrl-P. These mappings are in addition to Ctrl-P.
" cmd-shift-n and ,f == Ctrl-P
" cmd-e == most recent files
map <leader>f :CtrlP<cr>
map <d-N> :CtrlP<cr>
map <d-e> :CtrlPMRUFiles<cr>

map <left> :tabp<cr>
map <right> :tabn<cr>

" AckGrep current word
map <leader>a :call AckGrep()<cr>
" AckVisual current selection
vmap <leader>a :call AckVisual()<cr>

" easy window movement
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" quick save where modifiers are in use
nmap <leader-s> :w<cr>

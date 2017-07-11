filetype off                    " Avoid a Vim/Pathogen bug
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
syntax on
filetype plugin indent on

runtime! init/**.vim
silent! source ~/.vimrc.local

if exists(':SyntasticStatuslineFlag')
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


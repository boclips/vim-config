filetype off                    " Avoid a Vim/Pathogen bug
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
syntax on
filetype plugin indent on

runtime! init/**.vim
silent! source ~/.vimrc.local

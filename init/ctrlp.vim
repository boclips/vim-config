" only jump to windows if they're already in the current tab
let g:ctrlp_switch_buffer = 'et'

" use command-t style sorting
let g:ctrlp_match_window_reversed = 0

" make list big
let g:ctrlp_max_height = 20

" increase from default of 10000
let g:ctrlp_max_files = 100000

" use git as a custom finder
let g:ctrlp_user_command = 'cd %s && git ls-files --cached --others --exclude-standard'

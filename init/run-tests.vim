" Elixir mix test

" map <F12> :write<CR>:Vipe
"       \ mix test <C-r>=expand('%')<CR>
"       \ <CR>
" map <F11> :write<CR>:Vipe
"       \ mix test <C-r>=expand('%') . ':' . line('.')<CR>
"       \ <CR>

" Ruby RSpec

map <F12> :write<CR>:Vipe
      \ mix test <C-r>=expand('%')<CR>
      \ <CR>
map <F11> :write<CR>:Vipe
      \ mix test <C-r>=expand('%') . ':' . line('.')<CR>
      \ <CR>

" map <F12> :write<CR>:Vipe
"       \ ruby <C-r>=expand('%')<CR>
"       \ <CR>
" map <F11> :write<CR>:Vipe
"       \ ruby <C-r>=expand('%') . ':' . line('.')<CR>
"       \ <CR>

" map <F12> :write<CR>:Vipe
"             \ ginkgo -r -timeout=15s <C-r>=expand('%:h')<CR>
"             \ <CR>
" map <F11> :write<CR>:Vipe
"             \ ginkgo -r -timeout=15s <CR>
"             \ <CR>

imap <F12> <ESC><F12>
imap <F11> <ESC><F11>
map <F10> :write<CR>:Vipe<CR>
imap <F10> <ESC><F10>
map <F9>  :write<CR>:VipePop<CR>
imap <F9> <ESC><F9>

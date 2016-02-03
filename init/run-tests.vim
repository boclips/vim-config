" map <F12> :write<CR>:RunTest<CR>
" imap <F12> <ESC><F12>
" map <F11> :write<CR>:RunTestLine<CR>
" imap <F11> <ESC><F11>
" map <F10> :write<CR>:RunTestAgain<CR>
" imap <F10> <ESC><F10>
" map <F9> :write<CR>:RunTestPrevious<CR>
" imap <F9> <ESC><F9>

fun! SwiftTestName()
    return substitute(substitute(expand('%:f'), '/', ':', ''), '.swift$', '', '')
endf
map <F12> :write<CR>:Vipe
            \ xctool
            \ -sdk iphonesimulator
            \ -scheme RMQClient
            \ run-tests
            \ -only <C-r>=SwiftTestName()<CR><CR>
map <F11> :write<CR>:Vipe
            \ xctool
            \ -sdk iphonesimulator
            \ -scheme RMQClient
            \ test
            \ -only <C-r>=SwiftTestName()<CR><CR>
map <F10> :write<CR>:Vipe
            \ xctool
            \ -sdk iphonesimulator
            \ -scheme RMQClient
            \ build<CR>

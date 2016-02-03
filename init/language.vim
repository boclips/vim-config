" Whitespace & highlighting & language-specific config
" ----------------------------------------------------

" Strip trailing whitespace for code files on save
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction

" C family
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp call StripTrailingWhitespace()

" Ruby, Rails
autocmd BufWritePre *.rb,*.yml,*.js,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.erb,*.haml call StripTrailingWhitespace()

" Clojure
autocmd BufWritePre *.clj,*.dtm call StripTrailingWhitespace()

" Java, PHP
autocmd BufWritePre *.java,*.php,*.feature call StripTrailingWhitespace()

" Groovy
autocmd BufRead,BufNewFile *.gradle set filetype=groovy

" Highlight JSON files as javascript
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Highlight EDN and DTM files as Clojure
autocmd BufRead,BufNewFile *.edn,*.dtm set filetype=clojure

" All .h files are objc
autocmd BufRead,BufNewFile *.h set filetype=objc

" 2-indents
autocmd FileType javascript,ruby,haml,eruby,yaml,html,sass,cucumber set autoindent shiftwidth=2 softtabstop=2 expandtab

" 4-indent for groovy, java, php
autocmd FileType groovy,java,php setlocal autoindent expandtab shiftwidth=4 softtabstop=4

" Tab indent for golang
autocmd FileType go setlocal autoindent noexpandtab softtabstop=0 shiftwidth=4

" Rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBrace

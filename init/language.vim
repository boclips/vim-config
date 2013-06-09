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

" Java, PHP
autocmd BufWritePre *.java,*.php,*.feature call StripTrailingWhitespace()

" Highlight JSON files as javascript
autocmd BufRead,BufNewFile *.json set filetype=javascript

" 2-indents
autocmd FileType ruby,haml,eruby,yaml,html,sass,cucumber set autoindent shiftwidth=2 softtabstop=2 expandtab

" 4-indent for javascript
autocmd FileType javascript setlocal autoindent expandtab shiftwidth=4 softtabstop=4

" Rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBrace

function! OpenTestAlternate()
    let new_file = AlternateForCurrentFile()
    echo new_file
    exec ':e ' . new_file
endfunction
function! AlternateForCurrentFile()
    let current_file = expand("%")
    let project_name = split(expand('%:p'), '/')[3]
    let in_spec = match(current_file, '_test.clj$') != -1
    let going_to_spec = !in_spec
    if going_to_spec
        echo "going to spec"
        return substitute(current_file, '\vsrc/.+/(.+).clj$', 'test/\1_test.clj', '')
    else
        echo "going to src"
        return substitute(current_file, '\vtest/(.+)_test.clj$', 'src/' . project_name . '/\1.clj', '')
    endif
endfunction
nnoremap <leader>. :call OpenTestAlternate()<cr>

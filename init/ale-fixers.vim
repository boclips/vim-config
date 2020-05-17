let g:ale_fixers = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'javascript': ['prettier', 'tslint'],
            \   'rust': ['rustfmt'],
            \   'typescript': ['prettier', 'eslint'],
            \}
let g:ale_typescript_tslint_executable = "tslint"

" ---------------
" Tests
" ---------------
function! RunTestFile(...)
  if a:0
    let command_suffix = a:1
  else
    let command_suffix = ""
  endif

  " Run the tests for the previously-marked file.
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.go\)$') != -1
  if in_test_file
    call RunTests(expand("%") . command_suffix)
  else
    call RunTests('')
  end
endfunction

function! RunNearestTest()
  let spec_line_number = line('.')
  let s:last_command = ":" . spec_line_number
  call RunTestFile(":" . spec_line_number)
endfunction

function! RunTests(filename)
  :wa

  if a:filename == ''
    call vipe#peek()
    return
  endif

  let command = ''

  if match(a:filename, '\.feature') != -1
    if filereadable("script/features")
      let command = "script/features " . a:filename
    elseif filereadable("Gemfile")
      let command = "bundle exec cucumber " . a:filename
    else
      let command = "cucumber " . a:filename
    end
  elseif match(a:filename, '_test\.go') != -1
    if filereadable("script/test")
      let command = "script/test " . fnamemodify(a:filename, ':h')
    else
      let command = "ginkgo " . fnamemodify(a:filename, ':h')
    end
  else
    if filereadable("script/test")
      let command = "script/test " . a:filename
    elseif (exists('g:force_bundle_exec') && g:force_bundle_exec == 1) || filereadable("Gemfile")
      let command = "bundle exec rspec --color " . a:filename
    else
      let command = "rspec --color " . a:filename
    end
  end

  call vipe#push(command)
endfunction

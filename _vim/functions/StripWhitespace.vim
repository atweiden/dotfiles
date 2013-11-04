function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction

function! FindLongerLines()
    let @/ = '^.\{' . col('$') . '}'
    silent! norm n$
endfunction

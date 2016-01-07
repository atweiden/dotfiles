function! RefreshColors()
  let b:save_spot = getpos(".")
  exe "normal! 999999\<C-E>"
endfunction

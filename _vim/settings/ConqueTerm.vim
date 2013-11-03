function! s:Terminal(...)
  if a:0 > 0
    let l:cmd = a:1
  else
    let l:cmd = 'bash --login'
  endif
  execute 'ConqueTermSplit ' . l:cmd
endfunction
command! -nargs=? Terminal call s:Terminal(<f-args>)
au FileType conque_term highlight ExtraWhitespace guibg=NONE ctermbg=NONE
au FileType conque_term set nospell

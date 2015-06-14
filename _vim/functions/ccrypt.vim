"source: https://github.com/ds26gte/dotfiles/blob/master/.vim/plugin/ccrypt.vim
"last modified 2015-03-18
"from vim.wikia.com/wiki/Encryption

augroup ccrypt
  autocmd!
  autocmd bufreadpre *.cpt call s:ccrypt_bufreadpre()
  autocmd bufreadpost *.cpt call s:ccrypt_bufreadpost()
  autocmd bufwritepre *.cpt call s:ccrypt_bufwritepre()
  autocmd bufwritepost *.cpt call s:ccrypt_bufwritepost()
augroup END

function! s:ccrypt_bufreadpre()
  setlocal binary
  setlocal viminfo=
  setlocal noswapfile
endfunction

function! s:ccrypt_bufreadpost()
  let $crypticnonsense = inputsecret("Password: ")
  silent %!ccrypt -c -E crypticnonsense
  setlocal nobinary
endfunction

function! s:ccrypt_bufwritepre()
  let b:save_cursor = getpos(".")
  setlocal binary
  %!ccrypt -e -E crypticnonsense
endfunction

function! s:ccrypt_bufwritepost()
  undo
  setlocal nobinary
  setlocal nomodified
  call setpos('.', b:save_cursor)
  redraw!
endfunction

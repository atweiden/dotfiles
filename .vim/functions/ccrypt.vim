" Source: https://github.com/ds26gte/dotfiles/blob/master/.nvim/plugin/ccrypt.vim
" last modified 2015-09-26
" see http://vim.wikia.com/wiki/Encryption

func! s:ccrypt_bufnewfile()
  set vi=
  setl noswf
  let s:crypticnonsense = inputsecret('Password: ')
endfunc

func! s:ccrypt_bufreadpre()
  set vi=
  setl bin
  setl noswf
endfunc

func! s:ccrypt_bufreadpost()
  let s:crypticnonsense = inputsecret('Password: ')
  let $crypticnonsense = s:crypticnonsense
  set nostmp
  sil! %!ccrypt -c -E crypticnonsense
  set stmp&
  let $crypticnonsense = 0xDEAD
  if v:shell_error
    sil! u
    echo 'Error! Press any key to continue...'
    call getchar()
    return
  endif
  setl nobin
endfunc

func! s:ccrypt_bufwritepre()
  let b:save_cursor = getpos('.')
  setl bin
  let $crypticnonsense = s:crypticnonsense
  set nostmp
  %!ccrypt -e -E crypticnonsense
  set stmp&
  let $crypticnonsense = 0xDEAD
  if v:shell_error
    sil! u
    echo 'Error! Press any key to continue...'
    call getchar()
    return
  endif
endfunc

func! s:ccrypt_bufwritepost()
  u
  setl nobin
  setl nomod
  call setpos('.', b:save_cursor)
  redraw!
endfunc

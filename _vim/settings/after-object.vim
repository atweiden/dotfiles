augroup after-object
  autocmd!
  autocmd VimEnter * call after_object#enable(  [']', '['],
                                             \   '=', ':',
                                             \   '-', '#',
                                             \   ' ', '.',
                                             \   ',', '^',
                                             \   '!', '?',
                                             \   '|', '_',
                                             \   ']', '[',
                                             \   '}', '{',
                                             \   '<', '>',
                                             \   '/'        )
augroup END

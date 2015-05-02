augroup textobj_sentence
  autocmd!
  autocmd FileType markdown,mkd call textobj#sentence#init()
  autocmd FileType textile call textobj#sentence#init()
augroup END

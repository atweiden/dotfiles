augroup textobj_quote
    autocmd!
    autocmd FileType markdown,mkd call textobj#quote#init()
    autocmd FileType textile call textobj#quote#init()
    autocmd FileType text call textobj#quote#init({'educate': 0})
augroup END

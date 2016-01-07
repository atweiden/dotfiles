for fpath in split(globpath('~/.vim/functions', '*.vim'), '\n')
  exe 'source' fpath
endfor

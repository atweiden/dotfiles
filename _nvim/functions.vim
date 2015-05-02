for fpath in split(globpath('~/.nvim/functions', '*.vim'), '\n')
  exe 'source' fpath
endfor

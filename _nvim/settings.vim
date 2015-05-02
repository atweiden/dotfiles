for fpath in split(globpath('~/.nvim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

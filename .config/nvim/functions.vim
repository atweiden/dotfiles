for fpath in split(globpath('~/.config/nvim/functions', '*.vim'), '\n')
  exe 'source' fpath
endfor

" open fzf in urxvt
let g:fzf_launcher = 'urxvt -geometry 120x30 -e sh -c %s'

" for nvim only
let $FZF_DEFAULT_OPTS .= ' --inline-info'

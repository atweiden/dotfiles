let g:user_emmet_install_global = 0
let g:user_emmet_leader_key = '<C-E>'

augroup emmet
  autocmd!
  autocmd FileType html,css,haml,less,sass,scss,slim EmmetInstall
augroup END

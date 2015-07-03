" ----------------------------------------------------------------------------
" <leader>t | vim-tbone
" Source: https://github.com/junegunn/dotfiles/blob/master/vimrc
" ----------------------------------------------------------------------------
function! s:tmux_send(dest) range
  call inputsave()
  let dest = empty(a:dest) ? input('To which pane? ') : a:dest
  call inputrestore()
  silent call tbone#write_command(0, a:firstline, a:lastline, 1, dest)
endfunction
for m in ['n', 'x']
  execute m."noremap <silent> <leader>tt :call <SID>tmux_send('')<cr>"
  execute m."noremap <silent> <leader>th :call <SID>tmux_send('.left')<cr>"
  execute m."noremap <silent> <leader>tj :call <SID>tmux_send('.bottom')<cr>"
  execute m."noremap <silent> <leader>tk :call <SID>tmux_send('.top')<cr>"
  execute m."noremap <silent> <leader>tl :call <SID>tmux_send('.right')<cr>"
  execute m."noremap <silent> <leader>ty :call <SID>tmux_send('.top-left')<cr>"
  execute m."noremap <silent> <leader>to :call <SID>tmux_send('.top-right')<cr>"
  execute m."noremap <silent> <leader>tn :call <SID>tmux_send('.bottom-left')<cr>"
  execute m."noremap <silent> <leader>t. :call <SID>tmux_send('.bottom-right')<cr>"
endfor

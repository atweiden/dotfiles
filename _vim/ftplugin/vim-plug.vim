" Source: https://github.com/junegunn/vim-plug/pull/255#issuecomment-119524529
function! s:scroll_preview(down)
  silent! wincmd P
  if &previewwindow
    execute 'normal!' a:down ? "\<C-E>" : "\<C-Y>"
    wincmd p
  endif
endfunction

function! s:setup_extra_keys()
  nnoremap <silent> <buffer> J :call <sid>scroll_preview(1)<cr>
  nnoremap <silent> <buffer> K :call <sid>scroll_preview(0)<cr>
  nnoremap <silent> <buffer> <C-N> :call search('^  \zs[0-9a-f]')<cr>
  nnoremap <silent> <buffer> <C-P> :call search('^  \zs[0-9a-f]', 'b')<cr>

  " We can even do this
  " nmap <silent> <buffer> <C-J> <C-N>o
  " nmap <silent> <buffer> <C-K> <C-P>o
endfunction

autocmd! FileType vim-plug call s:setup_extra_keys()

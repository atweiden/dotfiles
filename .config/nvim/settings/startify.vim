" Don't show mru or bookmarks
let g:startify_list_order = ['files']
let g:startify_files_number = 0
let g:startify_enable_special = 0

" Show custom header
augroup Startify
  autocmd User Startified set nowrap
  autocmd User Startified :AnsiEsc
  "autocmd User Startified set laststatus=0
  "autocmd User Startified silent! call lightline#disable()
augroup END
function! s:center_header(lines) abort
  let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
  let centered_lines = map(copy(a:lines), 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction
let g:startify_custom_footer =
  \ s:center_header(split(system($HOME . '/.vim/scripts/girl.sh'), '\n'))

" Don't change to directory of file
let g:startify_change_to_dir = 0

" Don't seek/change to the root directory of the VCS
let g:startify_change_to_vcs_root = 0

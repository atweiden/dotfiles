" activate on startup
let g:indent_guides_enable_on_vim_startup = 1

" use custom colors
let g:indent_guides_auto_colors = 0

augroup indent-guides
  autocmd!
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#1c1c1c ctermbg=234
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#303030 ctermbg=236
augroup END

" enable default mapping <leader>ig for toggling indent-guides
let g:indent_guides_default_mapping = 1

" exclude filetypes
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

" don't consider spaces as indention
let g:indent_guides_space_guides = 0

" only match spaces at the beginning of the line
" uncomment if g:indent_guides_space_guides = 1
"let g:indent_guides_soft_pattern = ' '

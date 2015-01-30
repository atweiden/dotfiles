" jump to all visible opening tags after the cursor position
nmap <leader><leader>j <Plug>(breeze-jump-tag-forward)
" jump to all visible opening tags before the cursor position
nmap <leader><leader>J <Plug>(breeze-jump-tag-backward)

" jump to all visible HTML attributes after the cursor position
nmap <leader><leader>a <Plug>(breeze-jump-attribute-forward)
" jump to all visible HTML attributes before the cursor position
nmap <leader><leader>A <Plug>(breeze-jump-attribute-backward)

" move to the next tag
nmap gn <Plug>(breeze-next-tag-hl)
" move to the previous tag
nmap gN <Plug>(breeze-prev-tag-hl)

" move to the next attribute
nmap ga <Plug>(breeze-next-attribute-hl)
" move to the previous attribute
nmap gA <Plug>(breeze-prev-attribute-hl)

" highlight all jump marks in bold red
highlight clear BreezeJumpMark
highlight BreezeJumpMark cterm=bold ctermfg=9 gui=bold guifg=red

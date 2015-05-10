" toggle the highlight/reset of difference units for all lines
nmap <leader><leader>dt <Plug>ToggleDiffCharAllLines

" toggle the highlight/reset of difference units for current line
nmap <leader><leader>dT <Plug>ToggleDiffCharCurrentLine

" jump cursor to the start position of the previous difference unit
nmap <leader><leader>dN <Plug>JumpDiffCharPrevStart

" jump cursor to the start position of the next difference unit
nmap <leader><leader>dn <Plug>JumpDiffCharNextStart

" jump cursor to the end position of the previous difference unit
nmap <leader><leader>dE <Plug>JumpDiffCharPrevEnd

" jump cursor to the end position of the next difference unit
nmap <leader><leader>de <Plug>JumpDiffCharNextEnd

" use all available colors in dynamic random order for changed unit pairs
"let g:DiffColors = 100

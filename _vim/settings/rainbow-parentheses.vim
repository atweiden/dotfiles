let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
nnoremap <leader><leader>rp :RainbowParenthesesToggleAll<CR>
nnoremap <leader><leader>rpr :RainbowParenthesesLoadRound<CR>
nnoremap <leader><leader>rps :RainbowParenthesesLoadSquare<CR>
nnoremap <leader><leader>rpb :RainbowParenthesesLoadBraces<CR>
nnoremap <leader><leader>rpc :RainbowParenthesesLoadChevrons<CR>

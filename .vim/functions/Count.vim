" count number of matches for search term
" source: https://github.com/junegunn/dotfiles
command! -nargs=1 Count execute printf('%%s/%s//gn', escape(<q-args>, '/')) | normal! ``

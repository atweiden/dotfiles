if exists('b:did_ftplugin_after')
    finish
endif
let b:did_ftplugin_after = 1

nnoremap <leader>tc :call OCamlType()<CR>

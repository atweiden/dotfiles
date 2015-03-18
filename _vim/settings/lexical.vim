let g:lexical#thesaurus = ['/usr/share/thesaurus/moby-thesaurus.txt',]
let g:lexical#spell_key = '<leader>ls'
let g:lexical#thesaurus_key = '<leader>lt'
let g:lexical#dictionary_key = '<leader>lw'
augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init({ 'spell': 0 })
  autocmd FileType textile call lexical#init({ 'spell': 0 })
augroup END

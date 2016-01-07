function! DWMNewSpecific(file)
  execute "normal \<Plug>DWMNew"
  execute "edit ". a:file
endfunction

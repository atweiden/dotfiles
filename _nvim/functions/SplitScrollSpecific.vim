function! SplitScrollSpecific(file)
  execute "vsplit ". a:file
  execute "windo set scrollbind!"
endfunction

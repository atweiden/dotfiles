" SyntaxItem() - get syntax highlight group under cursor ---------------{{{2
" Source: https://github.com/kongo2002/dotfiles/blob/master/vimrc
function! SyntaxItem()
    let synGrp=synIDattr(synID(line("."), col("."), 1), "name")
    if synGrp != ""
      return "[" . synGrp . "]"
    else
      return ""
    endif
endfunction

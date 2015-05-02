let $in_hex=0
function! HexMe()
    set binary
    set noeol
    if $in_hex>0
      :%!xxd -r
      let $in_hex=0
    else
      :%!xxd
      let $in_hex=1
    endif
endfunction

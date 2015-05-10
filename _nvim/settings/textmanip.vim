xmap <Down> <Plug>(textmanip-move-down)
xmap <Up> <Plug>(textmanip-move-up)
xmap <Left> <Plug>(textmanip-move-left)
xmap <Right> <Plug>(textmanip-move-right)
xmap D <Plug>(textmanip-duplicate-down)

let g:textmanip_hooks = {}
function! g:textmanip_hooks.finish(tm)
  let tm = a:tm
  let helper = textmanip#helper#get()
  " When blockwise move/duplicate, remove trailing white space.  To use
  " this feature without feeling counterintuitive, I recommend you to
  " ':set virtualedit=block'
  call helper.remove_trailing_WS(tm)
endfunction

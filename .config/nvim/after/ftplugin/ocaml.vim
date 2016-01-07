if exists('b:did_ftplugin_after')
    finish
endif
let b:did_ftplugin_after = 1

call ocpindex#init()

nmap <buffer> K         <Plug>(ocpindex-echo-type)
nmap <buffer> <C-]>     <Plug>(ocpindex-jump)
nmap <buffer> <C-t>     <Plug>(ocpindex-jump-back)

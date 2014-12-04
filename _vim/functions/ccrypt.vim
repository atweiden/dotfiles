"source: https://github.com/ds26gte/dotfiles/blob/master/.vim/plugin/ccrypt.vim
"last modified 2014-12-02
"from vim.wikia.com/wiki/Encryption

au bufreadpre *.cpt call s:ccrypt_bufreadpre()

au bufreadpost *.cpt call s:ccrypt_bufreadpost()

au bufwritepre *.cpt call s:ccrypt_bufwritepre()

au bufwritepost *.cpt call s:ccrypt_bufwritepost()

func! s:ccrypt_bufreadpre()
    setl bin
    setl vi=
    setl noswf
endfunc

func! s:ccrypt_bufreadpost()
    let $crypticnonsense = inputsecret("Password: ")
    sil %!ccrypt -c -E crypticnonsense
    setl nobin
endfunc

func! s:ccrypt_bufwritepre()
    let b:save_cursor = getpos(".")
    setl bin
    %!ccrypt -e -E crypticnonsense
endfunc

func! s:ccrypt_bufwritepost()
    u
    setl nobin
    call setpos('.', b:save_cursor)
    execute ":redraw!"
endfunc

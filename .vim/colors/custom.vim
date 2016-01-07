" https://github.com/jmcantrell/dotfiles/blob/master/.vim/colors/custom.vim

function! s:DictCopy(dict, ...)
    " return a copy of a dict
    " optionally, if a list is passed, it will only copy those keys
    let dict_copy = {}
    if a:0 > 0 && type(a:1) == type([])
        for key in a:1
            if has_key(a:dict, key)
                let dict_copy[key] = a:dict[key]
            endif
        endfor
    else
        let dict_copy = copy(a:dict)
    endif
    return dict_copy
endfunction

function! s:Extend(dict_or_list, add)
    " add two dicts/lists together and return the result
    call extend(a:dict_or_list, a:add)
    return a:dict_or_list
endfunction

function! s:CopyHighlight(from, to, ...)
    " copy a highlight value from one group to another
    " the from/to arguments can be strings or dicts
    " optionally, if a list is passed, it will only copy those keys
    let hl_from = type(a:from) != type({}) ? s:GetHighlight(a:from) : a:from
    let hl_to   = type(a:to)   != type({}) ? s:GetHighlight(a:to)   : a:to
    " If a list of keys was passed, respect that
    if a:0 > 0 && type(a:1) == type([])
        call extend(hl_to, s:DictCopy(hl_from, a:1))
    else
        call extend(hl_to, hl_from)
    endif
    return hl_to
endfunction

function! s:GetHighlight(group, ...)
    " get a dict containing highlight values for a group
    " optionally, if a list is passed, it will only copy those keys
    let hl = {}
    " if a list of keys was passed, respect that
    if a:0 > 0 && type(a:1) == type([])
        let l:filter = a:1
    endif
    try
        execute "redir => line | silent hi ".a:group." | redir END"
    catch
    endtry
    for token in split(line)[2:]
        let [key, value] = split(token, '=')
        if exists("l:filter") && index(l:filter, key) == -1
            continue
        endif
        let hl[key] = value
    endfor
    return hl
endfunction

function! s:ApplyHighlight(group, dict, ...)
    " set a highlight group from a dict
    " optionally, if a list is passed, it will only copy those keys
    if len(a:dict) == 0
        return
    endif
    " if a list of keys was passed, respect that
    if a:0 > 0 && type(a:1) == type([])
        let l:filter = a:1
    endif
    let cmd = "hi ".a:group
    for key in keys(a:dict)
        if exists("l:filter") && index(l:filter, key) == -1
            continue
        endif
        let cmd .= " ".key."=".string(a:dict[key])
    endfor
    execute cmd
endfunction

function! s:DuplicateHighlight(from, to, ...)
    " duplicate one highlight group to another
    " optionally, if a list is passed, it will only use those keys
    if a:0 > 0 && type(a:1) == type([])
        call s:ApplyHighlight(a:to, s:GetHighlight(a:from, a:1))
    else
        call s:ApplyHighlight(a:to, s:GetHighlight(a:from))
    endif
endfunction

" once you go black, there's no going back
highlight Normal ctermbg=0 guibg=#000000

" not a fan of background colors in strings
highlight String ctermbg=NONE guibg=NONE

" selecting just inverts the colors
highlight Visual term=reverse cterm=reverse gui=reverse

" wildmenu sticks out like crazy
highlight WildMenu term=bold cterm=bold gui=bold

highlight MatchParen       term=bold cterm=bold gui=bold
highlight EasyMotionTarget term=bold cterm=bold gui=bold
highlight Folded           term=none cterm=none gui=none
highlight StatusLine       term=bold cterm=bold gui=bold
highlight StatusLineNC     term=none cterm=none gui=none
highlight CursorLine       term=none cterm=none gui=none
highlight CursorColumn     term=none cterm=none gui=none
highlight IncSearch        term=none cterm=none gui=none
highlight Search           term=none cterm=none gui=none

if has('gui_running') || &t_Co == 256
    highlight StatusLine   ctermfg=247 ctermbg=235 guifg=#b9b9b9 guibg=#3e3e5e
    highlight StatusLineNC ctermfg=247 ctermbg=0   guifg=#b9b9b9 guibg=#000000
    highlight CursorLine               ctermbg=235               guibg=#262626
    highlight CursorColumn             ctermbg=235               guibg=#262626
    highlight Visual       ctermfg=231 ctermbg=61  guifg=#eeeeee guibg=#4e4e8f
    highlight IncSearch    ctermfg=232 ctermbg=142 guifg=#000000 guibg=#ffff00
    highlight Search       ctermfg=0   ctermbg=215 guifg=#000000 guibg=#ffb964
    highlight WildMenu     ctermfg=142 ctermbg=235 guifg=#ffff00 guibg=#3e3e5e

    highlight EasyMotionTarget ctermfg=3 guifg=#ffff00

    highlight MatchParen ctermfg=231 ctermbg=57 guifg=cyan guibg=darkgrey

    highlight IndentGuidesOdd  ctermbg=235
    highlight IndentGuidesEven ctermbg=244
endif

let elms = ['gui', 'cterm', 'term', 'guibg', 'ctermbg']

let hln  = s:GetHighlight('Normal',     elms)
let hlsl = s:GetHighlight('StatusLine', elms)
let hlnu = s:GetHighlight('LineNr',     elms)

call s:ApplyHighlight('SignColumn',   hlnu)
call s:ApplyHighlight('CursorLineNr', hlnu)

call s:ApplyHighlight('ShowMarksHLl', s:Extend(hlnu, {'ctermfg': 51, 'guifg': '#ffff00'}))
call s:ApplyHighlight('ShowMarksHLu', s:Extend(hlnu, {'ctermfg': 51, 'guifg': '#ffff00'}))
call s:ApplyHighlight('ShowMarksHLo', s:Extend(hlnu, {'ctermfg': 51, 'guifg': '#ffff00'}))
call s:ApplyHighlight('ShowMarksHLm', s:Extend(hlnu, {'ctermfg': 51, 'guifg': '#ffff00'}))

call s:ApplyHighlight('Conceal', s:Extend(hln, {'ctermfg': 10, 'guifg': '#ff8bff'}))

if has('gui_running') || &t_Co == 256
    call s:ApplyHighlight('User1', s:Extend(hlsl, {'ctermfg': 46,  'guifg': '#00ff8b'}))
    call s:ApplyHighlight('User2', s:Extend(hlsl, {'ctermfg': 63,  'guifg': '#7070a0'}))
    call s:ApplyHighlight('User3', s:Extend(hlsl, {'ctermfg': 209, 'guifg': '#ff875f'}))
    call s:ApplyHighlight('User4', s:Extend(hlsl, {'ctermfg': 111, 'guifg': '#87afff'}))
    call s:ApplyHighlight('User5', s:Extend(hlsl, {'ctermfg': 231, 'guifg': '#ffffff'}))
    call s:ApplyHighlight('User6', s:Extend(hlsl, {'ctermfg': 51,  'guifg': '#00ffff'}))
    call s:ApplyHighlight('User7', s:Extend(hlsl, {'ctermfg': 226, 'guifg': '#ffff00'}))
    call s:ApplyHighlight('User8', s:Extend(hlsl, {'ctermfg': 36,  'guifg': '#00af87'}))
    call s:ApplyHighlight('User9', s:Extend(hlsl, {'ctermfg': 250, 'guifg': '#b9b9b9'}))
else
    call s:ApplyHighlight('User1', hlsl)
    call s:ApplyHighlight('User2', hlsl)
    call s:ApplyHighlight('User3', hlsl)
    call s:ApplyHighlight('User4', hlsl)
    call s:ApplyHighlight('User5', hlsl)
    call s:ApplyHighlight('User6', hlsl)
    call s:ApplyHighlight('User7', hlsl)
    call s:ApplyHighlight('User8', hlsl)
    call s:ApplyHighlight('User9', hlsl)
endif

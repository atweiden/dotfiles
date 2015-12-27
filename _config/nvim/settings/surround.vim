" Surround with double-angle brackets {{{

" Old Text          Command     New Text
" 'Hello world'     yssa        «'Hello world'»
let g:surround_97 = "«\r»"

" Old Text          Command     New Text
" 'Hello world'     yssA        « 'Hello world' »
let g:surround_65 = "« \r »"

" }}}


" Surround with corner brackets {{{

" Old Text          Command     New Text
" 'Hello world'     yssb        「'Hello world'」
let g:surround_98 = "「\r」"

" Old Text          Command     New Text
" 'Hello world'     yssB        「 'Hello world' 」
let g:surround_66 = "「 \r 」"

" }}}


" Surround with capturing bracketed character class {{{

" Old Text          Command     New Text
" 'Hello world'     yssc        <['Hello world']>
let g:surround_99 = "<[\r]>"

" Old Text          Command     New Text
" 'Hello world'     yssC        <[ 'Hello world' ]>
let g:surround_67 = "<[ \r ]>"

" }}}


" Surround with ogham feather marks {{{

" Old Text          Command     New Text
" 'Hello world'     yssd        ᚛'Hello world'᚜
let g:surround_100 = "᚛\r᚜"

" Old Text          Command     New Text
" 'Hello world'     yssD        ᚛ 'Hello world' ᚜
let g:surround_68 = "᚛ \r ᚜"

" }}}


" Surround with quilled square brackets {{{

" Old Text          Command     New Text
" 'Hello world'     ysse        ⁅'Hello world'⁆
let g:surround_101 = "⁅\r⁆"

" Old Text          Command     New Text
" 'Hello world'     yssE        ⁅ 'Hello world' ⁆
let g:surround_69 = "⁅ \r ⁆"

" }}}


" Surround with s-shaped bag delimiters {{{

" Old Text          Command     New Text
" 'Hello world'     ysss        ⟅'Hello world'⟆
let g:surround_115 = "⟅\r⟆"

" Old Text          Command     New Text
" 'Hello world'     yssS        ⟅ 'Hello world' ⟆
let g:surround_83 = "⟅ \r ⟆"

" }}}

" vim: fdm=marker fdl=0

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

nnoremap <silent> <F6> :TagbarToggle<CR>
inoremap <silent> <F6> <C-O>:TagbarToggle<CR>
vnoremap <silent> <F6> <ESC>:TagbarToggle<CR>gv

let g:tagbar_left = 0
let g:tagbar_width = 40
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_singleclick = 1
let g:tagbar_foldlevel = 99
let g:tagbar_iconchars = ['▾', '▸']

let g:tagbar_type_ada = {
    \ 'ctagstype' : 'ada',
    \ 'kinds'     : [
        \ 'P:package specs',
        \ 'p:packages',
        \ 't:type',
        \ 'u:subtypes',
        \ 'c:record type components',
        \ 'l:enum type literals',
        \ 'v:variables',
        \ 'f:formal parameters',
        \ 'n:constants',
        \ 'x:exceptions',
        \ 'R:subprogram specs',
        \ 'r:subprograms',
        \ 'K:task specs',
        \ 'k:tasks',
        \ 'O:protected data specs',
        \ 'o:protected data',
        \ 'e:entries',
        \ 'b:labels',
        \ 'i:identifiers'
    \ ]
\ }

let g:tagbar_type_armasm = {
    \ 'ctagsbin'  : 'ctags',
    \ 'ctagsargs' : '-f- --format=2 --excmd=pattern --fields=nksSa --extra= --sort=no --language-force=asm',
    \ 'kinds'     : [
        \ 'm:macros:0:1',
        \ 't:types:0:1',
        \ 'd:defines:0:1',
        \ 'l:labels:0:1'
    \ ]
\ }

let g:tagbar_type_asciidoc = {
    \ 'ctagstype' : 'asciidoc',
    \ 'kinds'     : [
        \ 'h:table of contents',
        \ 'a:anchors:1',
        \ 't:titles:1',
        \ 'n:includes:1',
        \ 'i:images:1',
        \ 'I:inline images:1'
    \ ],
    \ 'sort'      : 0
\ }

let g:tagbar_type_clojure = {
    \ 'ctagstype' : 'clojure',
    \ 'ctagsbin'  : 'ctags',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds'     : [
        \ 'n:namespaces',
        \ 'f:functions',
        \ 'p:private functions',
        \ 'i:inline',
        \ 'a:multimethod definitions',
        \ 'b:multimethod instances',
        \ 'c:definitions (once)',
        \ 's:structures',
        \ 'v:interns',
        \ 'm:macros',
        \ 'd:definitions'
    \ ]
\ }

let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields'
    \ ]
\ }

let g:tagbar_type_css = {
    \ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }

let g:tagbar_type_d = {
    \ 'ctagstype'  : 'd',
    \ 'kinds'      : [
        \ 'c:classes:0:1',
        \ 'f:functions',
        \ 'g:enums',
        \ 'u:unions',
        \ 's:structs',
        \ 'm:members'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'c' : 'class',
        \ 'g' : 'enum',
        \ 's' : 'struct',
        \ 'u' : 'union'
    \ },
    \ 'scope2kind' : {
        \ 'enum'   : 'g',
        \ 'class'  : 'c',
        \ 'struct' : 's',
        \ 'union'  : 'u'
    \ }
\ }

let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds'     : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records'
    \ ]
\ }

let g:tagbar_type_gorilla = {
    \ 'ctagstype' : 'gorilla',
    \ 'kinds'     : [
        \ 'C:constant',
        \ 'e:module',
        \ 'f:function',
        \ 'c:class',
        \ 'a:array',
        \ 'o:object',
        \ 'r:regex',
        \ 's:string'
    \ ],
    \ 'sro'       : "."
\ }

let g:tagbar_type_go = {
    \ 'ctagstype'  : 'go',
    \ 'kinds'      : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'   : 'gotags',
    \ 'ctagsargs'  : '-sort -silent'
\ }

let g:tagbar_type_gradle = {
    \ 'ctagstype' : 'Gradle',
    \ 'kinds'     : [
        \ 't:tasks'
    \ ]
\ }

let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package:1',
        \ 'c:classes',
        \ 'i:interfaces',
        \ 't:traits',
        \ 'e:enums',
        \ 'm:methods',
        \ 'f:fields:1'
    \ ]
\ }

let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \ 'm:modules:0:1',
        \ 'd:data: 0:1',
        \ 'd_gadt: data gadt:0:1',
        \ 't:type names:0:1',
        \ 'nt:new types:0:1',
        \ 'c:classes:0:1',
        \ 'cons:constructors:1:1',
        \ 'c_gadt:constructor gadt:1:1',
        \ 'c_a:constructor accessors:1:1',
        \ 'ft:function types:1:1',
        \ 'fi:function implementations:0:1',
        \ 'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

let g:tagbar_type_idlang = {
    \ 'ctagstype' : 'IDL',
    \ 'kinds'     : [
        \ 'p:Procedures',
        \ 'f:Functions',
        \ 'c:Common Blocks'
    \ ]
\ }

let g:tagbar_type_tex = {
    \ 'ctagstype' : 'latex',
    \ 'kinds'     : [
        \ 's:sections',
        \ 'g:graphics:0:0',
        \ 'l:labels',
        \ 'r:refs:1:0',
        \ 'p:pagerefs:1:0'
    \ ],
    \ 'sort' : 0
\ }

let g:tagbar_type_make = {
    \ 'kinds' : [
        \ 'm:macros',
        \ 't:targets'
    \ ]
\ }

let g:tagbar_type_markdown = {
    \ 'ctagstype'  : 'mkd',
    \ 'ctagsbin'   : 'markdown2ctags',
    \ 'ctagsargs'  : '-f - --sort=yes',
    \ 'kinds'      : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro'        : '|',
    \ 'kind2scope' : {
        \ 's' : 'section'
    \ },
    \ 'sort'       : 0
\ }

let g:tagbar_type_objc = {
    \ 'ctagstype' : 'ObjectiveC',
    \ 'kinds'     : [
        \ 'i:interface',
        \ 'I:implementation',
        \ 'p:Protocol',
        \ 'm:Object_method',
        \ 'c:Class_method',
        \ 'v:Global_variable',
        \ 'F:Object field',
        \ 'f:function',
        \ 'p:property',
        \ 't:type_alias',
        \ 's:type_structure',
        \ 'e:enumeration',
        \ 'M:preprocessor_macro',
    \ ],
    \ 'sro'        : ' ',
    \ 'kind2scope' : {
        \ 'i' : 'interface',
        \ 'I' : 'implementation',
        \ 'p' : 'Protocol',
        \ 's' : 'type_structure',
        \ 'e' : 'enumeration'
    \ },
    \ 'scope2kind' : {
        \ 'interface'      : 'i',
        \ 'implementation' : 'I',
        \ 'Protocol'       : 'p',
        \ 'type_structure' : 's',
        \ 'enumeration'    : 'e'
    \ }
\ }

let g:tagbar_type_perl6 = {
    \ 'ctagstype' : 'perl6',
    \ 'kinds' : [
        \ 'c:classes',
        \ 'g:grammars',
        \ 'm:methods',
        \ 'o:modules',
        \ 'p:packages',
        \ 'r:roles',
        \ 'u:rules',
        \ 'b:submethods',
        \ 's:subroutines',
        \ 't:tokens'
    \ ]
\ }

let g:tagbar_type_php  = {
  \ 'ctagstype' : 'php',
  \ 'kinds'     : [
      \ 'i:interfaces',
      \ 'c:classes',
      \ 'd:constant definitions',
      \ 'f:functions',
      \ 'j:javascript functions:1'
  \ ]
\ }

let g:tagbar_type_puppet = {
    \ 'ctagstype' : 'puppet',
    \ 'kinds'     : [
        \ 'c:class',
        \ 's:site',
        \ 'n:node',
        \ 'd:definition'
    \ ]
\ }

let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }

let g:tagbar_type_rst = {
    \ 'ctagstype'  : 'rst',
    \ 'ctagsbin'   : 'rst2ctags',
    \ 'ctagsargs'  : '-f - --sort=yes',
    \ 'kinds'      : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro'        : '|',
    \ 'kind2scope' : {
        \ 's' : 'section'
    \ },
    \ 'sort'       : 0
\ }

let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds'     : [
        \ 'T:types,type definitions',
        \ 'f:functions,function definitions',
        \ 'g:enum,enumeration names',
        \ 's:structure names',
        \ 'm:modules,module names',
        \ 'c:consts,static constants',
        \ 't:traits,traits',
        \ 'i:impls,trait implementations'
    \ ]
\ }

let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
\ }

let g:tagbar_type_snippets = {
    \ 'ctagstype' : 'snippets',
    \ 'kinds'     : [
        \ 's:snippets'
    \ ]
\ }

let g:tagbar_type_vhdl = {
    \ 'ctagstype' : 'vhdl',
    \ 'kinds'     : [
        \ 'd:prototypes',
        \ 'b:package bodies',
        \ 'e:entities',
        \ 'a:architectures',
        \ 't:types',
        \ 'p:processes',
        \ 'f:functions',
        \ 'r:procedures',
        \ 'c:constants',
        \ 'T:subtypes',
        \ 'r:records',
        \ 'C:components',
        \ 'P:packages',
        \ 'l:locals'
    \ ]
\ }

" don't highlight packages in variables as a scope reference - i.e. in
" $pack::var, pack:: is a scope
let g:perl_no_scope_in_variables = 1

" don't process complex things like @{${"foo"}}
let g:perl_no_extended_vars = 1

" use extra pod syntax highlighting
let g:perl_include_pod = 1

" enable perl6 folding
let g:perl6_fold = 1

" highlight perl5 style regexes when detected in perl6 code
let g:perl6_perl5_regexes = 1

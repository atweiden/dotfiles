" When this option is set to '1', YCM's identifier completer will also
" collect identifiers from tags files.
let g:ycm_collect_identifiers_from_tags_files = 1

" When this option is set to '1', YCM will show the completion menu even
" when typing inside comments.
let g:ycm_complete_in_comments = 1

" When this option is set to '1' YCM will ask once per
" '.ycm_extra_conf.py' file if it is safe to be loaded. This is to prevent
" execution of malicious code from a '.ycm_extra_conf.py' file you
" didn't write.
let g:ycm_confirm_extra_conf = 1

" Controls the number of characters the user needs to type before
" identifier-based completion suggestions are triggered.
"let g:ycm_min_num_of_chars_for_completion = 4

" When this option is set to '1', YCM's identifier completer will seed
" its identifier database with the keywords of the programming language
" you're writing.
let g:ycm_seed_identifiers_with_syntax = 1

" Don't create mapping for showing diagnostic text
let g:ycm_key_detailed_diagnostics = ''

" Turn off YCM's diagnostic display features (clutters vim gutter)
let g:ycm_show_diagnostics_ui = 0

nnoremap <leader>] :YcmCompleter GoToDefinitionElseDeclaration<CR>:call FocusLine()<CR>
"nnoremap <leader>] :YcmCompleter GoToDeclaration<CR>:call FocusLine()<CR>

" Character-based triggers for the various semantic completion engines
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,haskell,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \   'tex' : ['re!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*'],
  \ }

""""""""""""""""""""""""""""
" Locate files using mlocate

command! -nargs=1 Locate call fzf#run(
      \ {'source': 'locate <q-args>', 'sink': 'e', 'options': '-m'})

" `:Locate /` will list every file on the system. So make sure that
" you're using Go version of fzf which is significantly faster than the
" old Ruby version.


"""""""""""""""""""
" Simple MRU search

command! FZFMru call fzf#run({
            \'source': v:oldfiles,
            \'sink' : 'e ',
            \'options' : '-m',
            \})


""""""""""""""
" Jump to tags

command! -bar FZFTags if !empty(tagfiles()) | call fzf#run({
\   'source': "sed '/^\\!/d;s/\t.*//' " . join(tagfiles()) . ' | uniq',
\   'sink':   'tag',
\ }) | else | echo 'Preparing tags' | call system('ctags -R') | FZFTag | endif


"""""""""""""""""""""""""""""""""""
" Jump to tags only in current file

command! FZFTagFile if !empty(tagfiles()) | call fzf#run({
\   'source': "cat " . tagfiles()[0] . ' | grep "' . expand('%:@') . '"' . " | sed -e '/^\\!/d;s/\t.*//' ". ' |  uniq',
\   'sink':   'tag',
\   'options':  '+m',
\   'left':     60,
\ }) | else | echo 'No tags' | endif


""""""""""""""""""""""""""""""""""""""
" Search lines in all open vim buffers

function! s:line_handler(l)
  let keys = split(a:l, ':\t')
  exec 'buf' keys[0]
  exec keys[1]
  normal! ^zz
endfunction

function! s:buffer_lines()
  let res = []
  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
  endfor
  return res
endfunction

command! FZFLines call fzf#run({
\   'source':  <sid>buffer_lines(),
\   'sink':    function('<sid>line_handler'),
\   'options': '--extended --nth=3..',
\   'down':    '60%'
\})


""""""""""""""""""""""""""""""
" Narrow ag results within vim

" - CTRL-X, CTRL-V, CTRL-T to open in a new split, vertical split,
"   tab respectively
" - CTRL-A to select all matches and list them in quickfix window
"   - CTRL-D to deselect all
" - Ag without argument will list all the lines

function! s:ag_to_qf(line)
  let parts = split(a:line, ':')
  return {'filename': parts[0], 'lnum': parts[1], 'col': parts[2],
        \ 'text': join(parts[3:], ':')}
endfunction

function! s:ag_handler(lines)
  if len(a:lines) < 2 | return | endif

  let cmd = get({'ctrl-x': 'split',
               \ 'ctrl-v': 'vertical split',
               \ 'ctrl-t': 'tabe'}, a:lines[0], 'e')
  let list = map(a:lines[1:], 's:ag_to_qf(v:val)')

  let first = list[0]
  execute cmd escape(first.filename, ' %#\')
  execute first.lnum
  execute 'normal!' first.col.'|zz'

  if len(list) > 1
    call setqflist(list)
    copen
    wincmd p
  endif
endfunction

command! -nargs=* Ag call fzf#run({
\ 'source':  printf('ag --nogroup --column --color "%s"',
\                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
\ 'sink*':    function('<sid>ag_handler'),
\ 'options': '--ansi --no-hscroll --expect=ctrl-t,ctrl-v,ctrl-x '.
\            '--multi --bind ctrl-a:select-all,ctrl-d:deselect-all '.
\            '--color hl:68,hl+:110',
\ 'down':    '50%'
\ })


""""""""""""""""""""""""""
" Fuzzy cmdline completion

function! Lister()
    call extend(g:FZF_Cmd_Completion_Pre_List,split(getcmdline(),'\(\\\zs\)\@<!\& '))
endfunction

function! CmdLineDirComplete(prefix, options, rawdir)
    let l:dirprefix = matchstr(a:rawdir,"^.*/")
    if isdirectory(expand(l:dirprefix))
        return join(a:prefix + map(fzf#run({
                    \'options': a:options . ' --select-1  --query=' .
                    \ a:rawdir[matchend(a:rawdir,"^.*/"):len(a:rawdir)],
                    \'dir': expand(l:dirprefix)
                    \}),
                    \'"' . escape(l:dirprefix, " ") . '" . escape(v:val, " ")'))
    else
        return join(a:prefix + map(fzf#run({
                    \'options': a:options . ' --query='. a:rawdir }),
                    \'escape(v:val, " ")'))
        "dropped --select-1 to speed things up on a long query
endfunction

function! GetCompletions()
    let g:FZF_Cmd_Completion_Pre_List = []
    let l:cmdline_list = split(getcmdline(), '\(\\\zs\)\@<!\& ', 1)
    let l:Prefix = l:cmdline_list[0:-2]
    execute "silent normal! :" . getcmdline() . "\<c-a>\<c-\>eLister()\<cr>\<c-c>"
    let l:FZF_Cmd_Completion_List = g:FZF_Cmd_Completion_Pre_List[len(l:Prefix):-1]
    unlet g:FZF_Cmd_Completion_Pre_List
    if len(l:Prefix) > 0 && l:Prefix[0] =~
                \ '^ed\=i\=t\=$\|^spl\=i\=t\=$\|^tabed\=i\=t\=$\|^arged\=i\=t\=$\|^vsp\=l\=i\=t\=$'
                "single-argument file commands
        return CmdLineDirComplete(l:Prefix, "",l:cmdline_list[-1])
    elseif len(l:Prefix) > 0 && l:Prefix[0] =~
                \ '^arg\=s\=$\|^ne\=x\=t\=$\|^sne\=x\=t\=$\|^argad\=d\=$'
                "multi-argument file commands
        return CmdLineDirComplete(l:Prefix, '--multi', l:cmdline_list[-1])
    else
        return join(l:Prefix + fzf#run({
                    \'source':l:FZF_Cmd_Completion_List,
                    \'options': '--select-1 --query='.shellescape(l:cmdline_list[-1])
                    \}))
    endif
endfunction


""""""""""""""""""""""""""""
" Dictionary word completion

function! s:fzf_insert(data)
  execute 'normal!' (empty(s:fzf_query) ? 'a' : 'ciW')."\<C-R>=a:data\<CR>"
  startinsert!
endfunction

function! s:fzf_words(query)
  let s:fzf_query = a:query
  let matches = fzf#run({
  \ 'source':  'cat /usr/share/dict/words',
  \ 'sink':    function('s:fzf_insert'),
  \ 'options': '--no-multi --query="'.escape(a:query, '"').'"',
  \ 'down':    '40%'
  \ })
endfunction

command! FZFWords call <SID>fzf_words(expand('<cWORD>'))


"""""""""""""""
" Select buffer

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

command! FZFBuf call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m --prompt="Buf> "',
\   'down':    len(<sid>buflist()) + 2
\ })

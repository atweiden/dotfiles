""""""""""""""""""""""""""
" Fuzzy cmdline completion

cnoremap <silent> <c-l> <c-\>eGetCompletions()<CR>
"add an extra <CR> at the end of this line to automatically accept the fzf-selected completions.

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


""""""""""""""""""""""""""""""""""""""
" Search lines in all open vim buffers

command! FZFLines call fzf#run({
  \ 'source':  BuffersLines(),
  \ 'sink':    function('LineHandler'),
  \ 'options': '--extended --nth=3..',
  \ 'tmux_height': '60%'
\})

function! LineHandler(l)
  let keys = split(a:l, ':\t')
  exec 'buf ' . keys[0]
  exec keys[1]
  normal! ^zz
endfunction

function! BuffersLines()
  let res = []
  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
  endfor
  return res
endfunction

" hit <c-l> while in the ex commandline (i.e. after pressing :) to have fzf
" filter a list of vim's commandline auto-completions. Try :colo␣<c-l>
" (be sure to include the space) or :b␣<c-l>. There are special cases
" for handling file-searches, so that you can go deeper into the path than
" just one directory at a time, and so that you can add multiple files to
" the arglist at once. More special cases could be added. Some limitations:
" the auto-complete for :help and :tag are limited to 300 entries, so you
" may need to narrow it a bit.


""""""""""""""""""""""""""""""
" Narrow ag results within vim

command! -nargs=1 AgFZF call fzf#run({
            \'source': Arghandler(<f-args>),
            \'sink' : function('AgHandler'),
            \'options' : '-m'
            \})

function! AgHandler(l)
    let keys = split(a:l,':')
    execute 'tabe +' . keys[-2] . ' ' . escape(keys[-1], ' ')
endfunction

function! Arghandler(l)
    return "ag -i " . a:l . " | sed 's@\\(.[^:]*\\):\\(.[^:]*\\):\\(.*\\)@\\3:\\2:\\1@' "
endfunction

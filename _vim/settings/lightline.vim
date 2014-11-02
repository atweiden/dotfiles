let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'wordcount' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \   'wordcount': 'MyWordCount'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! MyModified()
  return &ft =~ 'help\|filebeagle\|undotree' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|filebeagle\|undotree' && &readonly ? '' : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'filebeagle' ? filebeagle#FileBeagleStatusLineCurrentDirInfo() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  if &ft !~? 'filebeagle\|undotree' && exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
  endif
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

" Source: https://gist.github.com/cormacrelf/d0bee254f5630b0e93c3
function! MyWordCount()
  if &ft !~? 'filebeagle\|undotree'
    let currentmode = mode()
    if !exists("g:lastmode_wc")
      let g:lastmode_wc = currentmode
    endif
    " if we modify file, open a new buffer, be in visual ever, or switch modes
    " since last run, we recompute.
    if &modified || !exists("b:wordcount") || currentmode =~? '\c.*v' || currentmode != g:lastmode_wc
      let g:lastmode_wc = currentmode
      let l:old_position = getpos('.')
      let l:old_status = v:statusmsg
      execute "silent normal g\<C-G>"
      if v:statusmsg == "--No lines in buffer--"
        let b:wordcount = 0
      else
        let s:split_wc = split(v:statusmsg)
        if index(s:split_wc, "Selected") < 0
          let b:wordcount = str2nr(s:split_wc[11])
        else
          let b:wordcount = str2nr(s:split_wc[5])
        endif
        let v:statusmsg = l:old_status
      endif
      call setpos('.', l:old_position)
      return b:wordcount
    else
      return b:wordcount
    endif
  endif
endfunction

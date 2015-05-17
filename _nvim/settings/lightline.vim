let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

let g:lightline.tab = {
      \ 'active': [ 'tabnum', 'mytabname', 'mytabmodified' ],
      \ 'inactive': [ 'tabnum', 'mytabname', 'mytabmodified' ] }

let g:lightline.tab_component_function = {
      \ 'mytabname': 'MyTabname',
      \ 'mytabmodified': 'MyTabmodified',
      \ 'readonly': 'lightline#tab#readonly',
      \ 'tabnum': 'lightline#tab#tabnum'
      \ }

function! MyModified()
  try
    if expand('%:t') !~? 'diffpanel_\|Tagbar\|NERD\|Lusty' && &ft !~? 'vimfiler\|vim-plug\|undotree\|thumbnail\|calendar'
      if &modified == 1
        return '+'
      else
        return ''
      endif
    endif
  catch
  endtry
  return ''
endfunction

function! MyReadonly()
  try
    if expand('%:t') !~? 'diffpanel_\|Tagbar\|NERD\|Lusty' && &ft !~? 'help\|vim-plug\|vimfiler\|undotree\|thumbnail\|calendar' && &readonly
      return ''
    endif
  catch
  endtry
  return ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ (&ft == 'vimfiler' ? pathshorten(vimfiler#get_status_string()[0:-9]) :
       \  &ft == 'unite' ? unite#get_status_string() :
       \  &ft == 'undotree' ? '' :
       \  &ft == 'vim-plug' ? '' :
       \  &ft == 'calendar' ? strftime('%Y/%m/%d') :
       \  &ft == 'thumbnail' ? exists('b:thumbnail.status') ? b:thumbnail.status : 'Thumbnail' :
       \  expand('%:t') =~? 'diffpanel_\|Tagbar\|NERD\|Lusty' ? '' :
       \  '' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|NERD\|Lusty' && &ft !~? 'help\|vim-plug\|vimfiler\|undotree\|thumbnail\|calendar' && exists('*fugitive#head')
      let _ = fugitive#head()
      return strlen(_) ? ' '._ : ''
    endif
  catch
  endtry
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
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
       \ fname =~ 'Lusty' ? 'Lusty' :
       \ fname =~ 'NERD_tree' ? 'NERDTree' :
       \ fname =~ 'diffpanel_' ? 'DiffPanel' :
       \ &ft == 'undotree' ? 'UndoTree' :
       \ &ft == 'unite' ? 'Unite' :
       \ &ft == 'vimfiler' ? 'VimFiler' :
       \ &ft == 'vim-plug' ? 'Plug' :
       \ &ft == 'calendar' ? 'Calendar' :
       \ &ft == 'thumbnail' ? 'Thumbnail' :
       \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! MyTabname(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let _ = expand('#'.buflist[winnr - 1].':t')
  if gettabwinvar(a:n, winnr, '&ft') == 'vimfiler'
    return '۷ϝ'
  else
    return strlen(_) ? _ : '[No Name]'
  endif
endfunction

function! MyTabmodified(n) abort
  let winnr = tabpagewinnr(a:n)
  if gettabwinvar(a:n, winnr, '&ft') == 'vimfiler'
    return ''
  else
    return gettabwinvar(a:n, winnr, '&modified') ? '+' : gettabwinvar(a:n, winnr, '&modifiable') ? '' : '-'
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'
function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
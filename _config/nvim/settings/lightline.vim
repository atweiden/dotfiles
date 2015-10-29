let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'filename': 'LightLineFilename',
      \   'fileformat': 'LightLineFileformat',
      \   'filetype': 'LightLineFiletype',
      \   'fileencoding': 'LightLineFileencoding',
      \   'mode': 'LightLineMode'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

let g:lightline.tab = {
      \ 'active': [ 'tabnum', 'lightlinetabname', 'lightlinetabmodified' ],
      \ 'inactive': [ 'tabnum', 'lightlinetabname', 'lightlinetabmodified' ] }

let g:lightline.tab_component_function = {
      \ 'lightlinetabname': 'LightLineTabname',
      \ 'lightlinetabmodified': 'LightLineTabmodified',
      \ 'readonly': 'lightline#tab#readonly',
      \ 'tabnum': 'lightline#tab#tabnum'
      \ }

function! LightLineModified()
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

function! LightLineReadonly()
  try
    if expand('%:t') !~? 'diffpanel_\|Tagbar\|NERD\|Lusty' && &ft !~? 'help\|vim-plug\|vimfiler\|undotree\|thumbnail\|calendar' && &readonly
      return ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
       \ (&ft == 'vimfiler' ? pathshorten(vimfiler#get_status_string()[0:-9]) :
       \  &ft == 'unite' ? unite#get_status_string() :
       \  &ft == 'undotree' ? '' :
       \  &ft == 'vim-plug' ? '' :
       \  &ft == 'calendar' ? strftime('%Y/%m/%d') :
       \  &ft == 'thumbnail' ? exists('b:thumbnail.status') ? b:thumbnail.status : 'Thumbnail' :
       \  expand('%:t') =~? 'diffpanel_\|Tagbar\|NERD\|Lusty' ? '' :
       \  '' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|NERD\|Lusty' && &ft !~? 'help\|vim-plug\|vimfiler\|undotree\|thumbnail\|calendar' && exists('*fugitive#head')
      let _ = fugitive#head()
      return strlen(_) ? ' '._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
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

function! LightLineTabname(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let _ = expand('#'.buflist[winnr - 1].':t')
  if gettabwinvar(a:n, winnr, '&ft') == 'vimfiler'
    return '۷ϝ'
  else
    return strlen(_) ? _ : '[No Name]'
  endif
endfunction

function! LightLineTabmodified(n) abort
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

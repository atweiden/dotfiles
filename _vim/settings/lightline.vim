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

function! MyModified()
  try
    if expand('%:t') !~? 'diffpanel_\|Tagbar\|NERD\|Lusty' && &ft !~? 'vimfiler\|undotree\|thumbnail\|calendar'
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
    if expand('%:t') !~? 'diffpanel_\|Tagbar\|NERD\|Lusty' && &ft !~? 'help\|vimfiler\|undotree\|thumbnail\|calendar' && &readonly
      return ''
    endif
  catch
  endtry
  return ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
       \  &ft == 'unite' ? unite#get_status_string() :
       \  &ft == 'vimshell' ? '' :
       \  &ft == 'undotree' ? '' :
       \  &ft == 'calendar' ? strftime('%Y/%m/%d') :
       \  &ft == 'thumbnail' ? exists('b:thumbnail.status') ? b:thumbnail.status : 'Thumbnail' :
       \  expand('%:t') =~? 'diffpanel_\|Tagbar\|NERD\|Lusty' ? '' :
       \  '' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|NERD\|Lusty' && &ft !~? 'help\|vimfiler\|undotree\|thumbnail\|calendar' && exists('*fugitive#head')
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
       \ &ft == 'vimshell' ? 'VimShell' :
       \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

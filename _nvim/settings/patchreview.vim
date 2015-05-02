" keep current source on left
" open diff splits towards right side of current source file
let g:patchreview_split_right = 1

" use wiggle to create additional diff when review fails with conflicts/rejections
if executable('wiggle')
  let g:patchreview_wiggle = '/usr/bin/wiggle'
  let g:patchreview_patch = '/usr/bin/wiggle'
endif

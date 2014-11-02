" yank history
nnoremap <silent> <leader><leader>y :Unite history/yank<CR>

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--smart-case --nocolor --nogroup --column'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --hidden -g ""'
elseif executable('pt')
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--smart-case --nocolor --nogroup'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_rec_async_command= 'pt --nocolor --nogroup -g ""'
elseif executable('ack')
  let g:unite_source_grep_command = 'ack'
  let g:unite_source_grep_default_opts = '--smart-case --nocolor --nogroup --column'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_rec_async_command= 'ack --nocolor --nogroup -g ""'
endif

let g:unite_enable_start_insert = 1
let g:unite_source_file_rec_max_cache_files = 0
let g:unite_source_history_yank_enable = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10
let g:unite_candidate_icon="➜"
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec/async','sorters','sorter_rank')

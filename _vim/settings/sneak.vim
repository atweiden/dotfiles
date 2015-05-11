" replace 'f' with 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

" replace 't' with 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

" 2-character Sneak mappings
nmap - <Plug>Sneak_s
nmap _ <Plug>Sneak_S
xmap - <Plug>Sneak_s
xmap _ <Plug>Sneak_S
omap - <Plug>Sneak_s
omap _ <Plug>Sneak_S

" explicit repeat (as opposed to clever-s repeat)
"nmap <CR> <Plug>SneakNext
"xmap <CR> <Plug>SneakNext
"nmap <BS> <Plug>SneakPrevious
"xmap <BS> <Plug>SneakPrevious

" use clever-s repeat behavior
let g:sneak#s_next = 1

" empty prompt
let g:sneak#prompt = ''

" don't do any special handling of file manager buffers
let g:sneak#map_netrw = 0

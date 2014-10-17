" -----------------------------------------------------------------------------
" Vim Settings
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
" Constants

let s:isnix = has('unix')
let s:iswin = has('win32') || has('win64') || has('win32unix')
let s:ismac = has('mac')


" -----------------------------------------------------------------------------
" General

set nocompatible
let mapleader=","
noremap \ ,
set shortmess=aIoO
set mouse=a
set mousemodel=popup_setpos
set encoding=utf-8
set nofsync
set noshowmode


" -----------------------------------------------------------------------------
" Plugins

if filereadable(expand('~/.vim/plugs.vim'))
  source ~/.vim/plugs.vim
endif


" -----------------------------------------------------------------------------
" Functions

if filereadable(expand('~/.vim/functions.vim'))
  source ~/.vim/functions.vim
endif


" -----------------------------------------------------------------------------
" Basics

set title
set backupdir=~/.vim/.backups
set directory=~/.vim/.swaps
set undodir=~/.vim/.undo
set notimeout
set timeout timeoutlen=3000
set ttimeout ttimeoutlen=5
set modelines=0
set nrformats=
set viminfo='100,<50,s10,h,!
rviminfo

if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
  call mkdir(expand(&directory), "p")
endif
if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif


" -----------------------------------------------------------------------------
" Display

" vim {{{

set background=dark
if $TERM == "rxvt-unicode-256color" || $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
  let g:jellyx_show_whitespace = 1
  colorscheme jellyx
elseif $TERM == "linux"
  colorscheme harold
endif

" }}}

" gvim {{{

if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions+=c
    set guifont=Monaco\ for\ Powerline\ 16
    set guiheadroom=0
    set t_Co=256
    let g:jellyx_show_whitespace = 1
    colorscheme jellyx

    " resize font
    noremap <M--> :Smaller<CR>
    noremap <M-+> :Bigger<CR>
    " paste selection with <S-Ins>
    inoremap <S-Insert> <MiddleMouse>
    cnoremap <S-Insert> <MiddleMouse>
endif

if has('autocmd')
  autocmd GUIEnter * set vb t_vb=
endif

" }}}

" cursor {{{

highlight Cursor guifg=black guibg=gray
highlight iCursor guifg=white guibg=white
set guicursor+=n-v-c:blinkon0-block-Cursor
set guicursor+=i:blinkon0-ver25-Cursor/lCursor

" }}}

" listchars {{{

set nolist
set listchars =tab:▷⋅
set listchars+=extends:›
set listchars+=precedes:‹
set listchars+=nbsp:·
set listchars+=trail:·

" }}}

" screen {{{

set synmaxcol=800
nnoremap <leader>u :syntax sync fromstart<CR>:redraw!<CR>
au VimResized * :wincmd =

" }}}


" -----------------------------------------------------------------------------
" Editing

set noautowrite
set noautowriteall
set noautoread
set ffs=unix,dos,mac
set nostartofline
set virtualedit=block
set noerrorbells
set vb t_vb=
set confirm
set showcmd
set report=0
set cursorline
set cuc cul
set undofile
set undolevels=500
set history=500
set laststatus=2
set noshowmatch
set wildmenu
set wildmode=list:longest,full
set wildignore=*.o,*~,*.pyc,.git/*,.hg/*,.svn/*,*.DS_Store
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,CVS/,tags
set hidden
set splitright
set splitbelow
set winminheight=0
set winminwidth=0
set updatecount=20
set lazyredraw
set ttyfast
set ttymouse=xterm2
set backspace=2
set scrolloff=8
set sidescrolloff=8
set sidescroll=8
set linebreak
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround
set matchpairs+=<:>
set foldmethod=indent
set foldlevel=99
set wrap
set number
"set relativenumber
set numberwidth=1
set textwidth=70
set linespace=1
set smarttab
set nowrapscan
set incsearch
set hlsearch
set ignorecase
set smartcase
set infercase
set sessionoptions+=tabpages,globals
set formatoptions=
set formatoptions+=c
set formatoptions+=r
set formatoptions+=o
set formatoptions+=q
set formatoptions+=n
set formatoptions+=2
set formatoptions+=l
set formatoptions+=1


" -----------------------------------------------------------------------------
" Shortcuts

" Editing
" --- selecting {{{

" escape
call arpeggio#load()
Arpeggio inoremap jk <ESC>
Arpeggio xnoremap jk <ESC>
" preserve selection when indenting
vmap > >gv
vmap < <gv

" }}}
" --- searching {{{

" search within visual block
vnoremap / <ESC>/\v%V
" remove highlights
nmap <Leader><CR> :nohlsearch<CR>

" }}}
" --- pasting {{{

" yank to end of line
noremap Y y$
" copy to clipboard
vnoremap <leader>y "+yy
" paste from clipboard
noremap <leader>p "+p
" toggle paste mode
set pastetoggle=<F2>

" }}}
" --- proofreading {{{

" find lines longer than 78 characters
nmap <leader><leader>l /^.\{-}\zs.\%>79v<CR>
" find two spaces after a period
nmap <leader><leader>. /\.\s\s\+\w/s+1<CR>
" find things like 'why ?' and 'now !'
nmap <leader><leader>! /\w\s\+[\?\!\;\.\,]/s+1<CR>
" find multiple newlines together
nmap <leader><leader>r /\n\{3,\}/s+1<CR>

" }}}
" --- writing {{{

" sudo to write
cnoremap w!! w !sudo tee % >/dev/null
" expand %% to the path of the current buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" change to directory of file
nnoremap <silent> <leader>. :cd%:h<CR>
" fix windoze ^M
" alternative to `dos2unix file`
noremap <Leader>rmm :%s///g<CR>

" }}}
" --- redoing {{{

" maintain location in document while redoing
nmap . .`[
" qq to record, Q to replay
nnoremap Q @q

" }}}

" Lines
" --- toggle {{{

" toggle line wrap
map <silent> <F3> :set nowrap!<CR>
imap <silent> <F3> <C-O>:set nowrap!<CR>
" toggle line numbers
"map <silent> <F4> :set nonu!<CR>
"imap <silent> <F4> <C-O>:set nonu!<CR>
"nmap <F4> :NumbersOnOff<CR>
nmap <F4> :NumbersToggle<CR>
" toggle line and column highlighting
map <silent> <F5> :set nocursorline! nocursorcolumn!<CR>
imap <silent> <F5> <C-O>:set nocursorline! nocursorcolumn!<CR>
" toggle spell checking
map <silent> <F7> :set spell! spelllang=en_us<CR>
imap <silent> <F7> <C-O>:set spell! spelllang=en_us<CR>

" }}}
" --- scrolling {{{

" scroll four lines at a time
nnoremap <C-E> 4<C-E>
nnoremap <C-Y> 4<C-Y>

" }}}

" Programming
" --- autocompletion {{{

" customize autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" }}}
" --- merging {{{

" highlight conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
" jump to next conflict marker
nmap <silent> <leader>jc /^\(<\\|=\\|>\)\{7\}\([^=].\+\)\?$<CR>

" }}}
" --- hex {{{

" toggle between hex and binary, after opening file with `vim -b`
noremap <F9> :call HexMe()<CR>

" }}}
" --- conceal {{{

" toggle concealed characters
noremap <leader><leader>cl :call ConcealToggle()<CR>

" }}}

" Navigation
" ---windows {{{

" map alt-[h,j,k,l,=,_,|] to resizing a window split
" map alt-[s,v] to horizontal and vertical split respectively
" map alt-[n,p] to moving to next and previous window respectively
" map alt-[H,J,K,L] to repositioning a window split
"nnoremap <M-h> <C-W><
nnoremap <M-h> :ObviousResizeLeft<CR>
"nnoremap <M-j> <C-W>-
nnoremap <M-j> :ObviousResizeDown<CR>
"nnoremap <M-k> <C-W>+
nnoremap <M-k> :ObviousResizeUp<CR>
"nnoremap <M-l> <C-W>>
nnoremap <M-l> :ObviousResizeRight<CR>
nnoremap <M-=> <C-W>=
nnoremap <M-_> <C-W>_
nnoremap <M-\|> <C-W>\|
nnoremap <M-s> :split<CR>
nnoremap <M-v> :vsplit<CR>
nnoremap <M-n> <C-W><C-W>
nnoremap <M-p> <C-W><S-W>
nnoremap <M-H> <C-W>H
nnoremap <M-J> <C-W>J
nnoremap <M-K> <C-W>K
nnoremap <M-L> <C-W>L
" simultaneously scroll split windows
nmap <leader>sb :call SplitScroll()<CR>

" }}}


" -----------------------------------------------------------------------------
" Filetype Settings

" don't move back the cursor one position when exiting insert mode {{{

autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

" }}}

" return to last edit position {{{

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" }}}

" autoload sessions created by tpope's vim-obsession when starting vim {{{

augroup sourcesession
        autocmd!
        autocmd VimEnter * nested
        \ if !argc() && empty(v:this_session) && filereadable('Session.vim') |
        \   source Session.vim |
        \ endif
augroup END

" }}}

" languages {{{

au BufEnter,BufRead,BufNewFile,BufWrite {*.cfg,.ackrc,.ctags,.dunstrc,.hgrc,.npmrc} set ft=cfg
au BufEnter,BufRead,BufNewFile,BufWrite {*.clj} set ft=clojure
au BufEnter,BufRead,BufNewFile,BufWrite {*.coffee} set ft=coffee
au BufEnter,BufRead,BufNewFile,BufWrite {.curlrc,.gitignore,.gitattributes,.hgignore,.jshintignore} set ft=conf
au BufEnter,BufRead,BufNewFile,BufWrite {.conkyrc*} set ft=conkyrc
au BufEnter,BufRead,BufNewFile,BufWrite {*.c} set ft=c
au BufEnter,BufRead,BufNewFile,BufWrite {*.cpp,*.hpp} set ft=cpp
au BufEnter,BufRead,BufNewFile,BufWrite {*.cs} set ft=cs
au BufEnter,BufRead,BufNewFile,BufWrite {*.css} set ft=css
au BufEnter,BufRead,BufNewFile,BufWrite {*.csv,*.psv,*.tsv} set ft=csv
au BufEnter,BufRead,BufNewFile,BufWrite {*.d} set ft=d
au BufEnter,BufRead,BufNewFile,BufWrite {*.dart} set ft=dart
au BufEnter,BufRead,BufNewFile,BufWrite {*.dock,Dockerfile*} set ft=dockerfile
au BufEnter,BufRead,BufNewFile,BufWrite {*.eex} set ft=eelixir
au BufEnter,BufRead,BufNewFile,BufWrite {*.ex,*.exs} set ft=elixir
au BufEnter,BufRead,BufNewFile,BufWrite {*.erl} set ft=erlang
au BufEnter,BufRead,BufNewFile,BufWrite {*.egs} set ft=egs
au BufEnter,BufRead,BufNewFile,BufWrite {*.erb} set ft=eruby
au BufEnter,BufRead,BufNewFile,BufWrite {.gitconfig} set ft=gitconfig
au BufEnter,BufRead,BufNewFile,BufWrite {*.go} set ft=go
au BufEnter,BufRead,BufNewFile,BufWrite {*.gs} set ft=gorilla
au BufEnter,BufRead,BufNewFile,BufWrite {*.ejs,*.htm,*.html} set ft=html
au BufEnter,BufRead,BufNewFile,BufWrite {*.html.ep,*.html.epl} set ft=html.epl
au BufEnter,BufRead,BufNewFile,BufWrite {*.haml} set ft=haml
au BufEnter,BufRead,BufNewFile,BufWrite {*.hs} set ft=haskell
au BufEnter,BufRead,BufNewFile,BufWrite {.inputrc} set ft=readline
au BufEnter,BufRead,BufNewFile,BufWrite {*.jade} set ft=jade
au BufEnter,BufRead,BufNewFile,BufWrite {*.js,.jshintrc} set ft=javascript
au BufEnter,BufRead,BufNewFile,BufWrite {*.json} set ft=json
au BufEnter,BufRead,BufNewFile,BufWrite {*.json5} set ft=json5
au BufEnter,BufRead,BufNewFile,BufWrite {*.j2,*.jinja,*.jinja2} set ft=jinja
au BufEnter,BufRead,BufNewFile,BufWrite {*.jl} set ft=julia
au BufEnter,BufRead,BufNewFile,BufWrite {*.kv} set ft=kivy
au BufEnter,BufRead,BufNewFile,BufWrite {*.ledger} set ft=ledger
au BufEnter,BufRead,BufNewFile,BufWrite {*.less} set ft=less
au BufEnter,BufRead,BufNewFile,BufWrite {*.lisp} set ft=lisp
au BufEnter,BufRead,BufNewFile,BufWrite {*.lua} set ft=lua
au BufEnter,BufRead,BufNewFile,BufWrite {*.cpt,*.markdown,*.md,*.mkd,*.ronn} set ft=markdown conceallevel=0
au BufEnter,BufRead,BufNewFile,BufWrite {*.nim} set ft=nim
au BufEnter,BufRead,BufNewFile,BufWrite {*.ml,*.mli} set ft=ocaml
au BufEnter,BufRead,BufNewFile,BufWrite {*.ctp,*.php} set ft=php
au BufEnter,BufRead,BufNewFile,BufWrite {*.pl,*.pm,*.t} set ft=perl
au BufEnter,BufRead,BufNewFile,BufWrite {*.pro} set ft=pro
au BufEnter,BufRead,BufNewFile,BufWrite {*.py,.pdbrc,.pythonrc,.python_history} set ft=python
au BufEnter,BufRead,BufNewFile,BufWrite {*.god,*.rabl,*.rb,.caprc,.irbrc,Capfile,Gemfile,Rakefile,Thorfile,config.ru,irb_tempfile*} set ft=ruby
au BufEnter,BufRead,BufNewFile,BufWrite {*.rkt} set ft=racket
au BufEnter,BufRead,BufNewFile,BufWrite {*.rs} set ft=rust
au BufEnter,BufRead,BufNewFile,BufWrite {*.rst} set ft=rst
au BufEnter,BufRead,BufNewFile,BufWrite {*.sass} set ft=sass
au BufEnter,BufRead,BufNewFile,BufWrite {*.scss} set ft=scss
au BufEnter,BufRead,BufNewFile,BufWrite {*.scm} set ft=scheme
au BufEnter,BufRead,BufNewFile,BufWrite {.screenrc} set ft=screen
au BufEnter,BufRead,BufNewFile,BufWrite {*.sh,.bashrc,.bash_logout,.bash_profile,.xinitrc,.xsession,PKGBUILD} set ft=sh
au BufEnter,BufRead,BufNewFile,BufWrite {*.slim} set ft=slim
au BufEnter,BufRead,BufNewFile,BufWrite {*.sls} set ft=sls
au BufEnter,BufRead,BufNewFile,BufWrite {*.sql,.psqlrc} set ft=sql
au BufEnter,BufRead,BufNewFile,BufWrite {*.styl} set ft=stylus
au BufEnter,BufRead,BufNewFile,BufWrite {*.textile} set ft=textile
au BufEnter,BufRead,BufNewFile,BufWrite {*.tmux,*tmux.conf*} set ft=tmux-conf
au BufEnter,BufRead,BufNewFile,BufWrite {*.toml} set ft=toml
au BufEnter,BufRead,BufNewFile,BufWrite {*.tup,Tupfile} set ft=tup
au BufEnter,BufRead,BufNewFile,BufWrite {*.vim,*.vimencrypt,*viminfo*,*vimrc*} set ft=vim
au BufEnter,BufRead,BufNewFile,BufWrite {.wgetrc} set ft=wget
au BufEnter,BufRead,BufNewFile,BufWrite {.Xdefaults,.Xresources} set ft=xdefaults
au BufEnter,BufRead,BufNewFile,BufWrite {*.xml} set ft=xml
au BufEnter,BufRead,BufNewFile,BufWrite {*.bin} set ft=xxd
au BufEnter,BufRead,BufNewFile,BufWrite {*.zsh} set ft=zsh

" }}}

" omnicompletion {{{

autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType clojure set omnifunc=clojurecomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=js#CompleteJS
autocmd FileType lisp,racket,scheme setlocal equalprg=scmindent
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType sql set omnifunc=sqlcomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

" }}}

" dictionaries {{{

au FileType javascript set dictionary+=$HOME/.vim/dict/javascript.dict
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict

" }}}

" spelling {{{

let g:spellfile_URL = '/usr/share/vim/vimfiles/spell'
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
if version >= 700
    set spl=en spell
    set nospell
endif

" }}}


" -----------------------------------------------------------------------------
" Plugin Settings

if filereadable(expand('~/.vim/settings.vim'))
  source ~/.vim/settings.vim
endif

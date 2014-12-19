" -----------------------------------------------------------------------------
" Vim Settings
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
" Constants

let s:isnix = has('unix')
let s:iswin = has('win16') || has('win32') || has('win64') || has('win32unix') || has('win95')
let s:ismac = has('mac')


" -----------------------------------------------------------------------------
" General

" don't be compatible with vi
set nocompatible

" set mapleader from backslash to comma
let mapleader=","

" hide intro screen, use all abbreviations, omit redundant messages
set shortmess=aIoO

" turn on mouse in all modes
if has('mouse')
  set mouse=a
  set mousemodel=popup_setpos
endif

" use utf-8 character encoding
set encoding=utf-8

" flush file to disk after writing for protection against data loss
set nofsync

" don't show active mode on last line, lightline has this covered
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

" descriptive window title
set title
if has('title') && (has('gui_running') || &title)
  set titlestring=
  set titlestring+=%f\                                              " File name
  set titlestring+=%h%m%r%w                                         " Flags
  set titlestring+=\ \|\ %{v:progname}                              " Program name
  set titlestring+=\ \|\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')} " Working directory
endif

" store backups in the same directory
set backupdir=~/.vim/.backups

" store swap files in the same directory
set directory=~/.vim/.swaps

" store undo files in the same directory
set undodir=~/.vim/.undo

" don't clear screen when vim closes
set t_ti= t_te=

" timeout settings
set timeout
set nottimeout
set timeoutlen=1000
set ttimeoutlen=50

" disable modelines, use securemodelines.vim instead
set nomodeline
let g:secure_modelines_verbose = 0
let g:secure_modelines_modelines = 15
au VimEnter * call filter(exists("g:secure_modelines_allowed_items") ? g:secure_modelines_allowed_items : [],
            \ 'v:val != "fdm" && v:val != "foldmethod"')

" switching buffers
set switchbuf=useopen,usetab,newtab
"             |       |      |
"             |       |      +-------- Prefer opening quickfix windows in new tabs
"             |       +--------------- Consider windows in other tab pages wrt useopen
"             +----------------------- Jump to the first open window that contains the specified buffer if there is one

" do not consider octal numbers for C-a/C-x
set nrformats-=octal

" configure viminfo
set viminfo='100,<50,s10,h,!
"           |    |   |   | |
"           |    |   |   | +--- Save and restore all-uppercase global variables
"           |    |   |   +----- Don't restore hlsearch on startup
"           |    |   +--------- Exclude registers greater than N Kb
"           |    +------------- Keep N lines for each register
"           +------------------ Keep marks for N files
rviminfo

" make directories if necessary
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

" dark background
set background=dark

" autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

if $TERM == "rxvt-unicode-256color" || $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  " jellyx
  set t_Co=256
  let g:jellyx_show_whitespace = 1
  colorscheme jellyx
elseif $TERM == "linux"
  " miro8
  colorscheme miro8
  highlight Pmenu ctermfg=7 ctermbg=0
endif

" }}}

" gvim {{{

if has("gui_running")
  " no menu bar
  set guioptions-=m
  " no toolbar
  set guioptions-=T
  " no right-hand scrollbar
  set guioptions-=r
  set guioptions-=R
  " no left-hand scrollbar
  set guioptions-=l
  set guioptions-=L
  " use console dialogs instead of popups
  set guioptions+=c
  " use lightline-compatible monaco
  set guifont=Monaco\ for\ Powerline\ 16
  " allow gvim window to occupy whole screen
  set guiheadroom=0
  " jellyx
  set t_Co=256
  let g:jellyx_show_whitespace = 1
  colorscheme jellyx
  " resize font
  noremap <silent> <M--> :Smaller<CR>
  noremap <silent> <M-+> :Bigger<CR>
  " paste selection with <S-Ins>
  inoremap <S-Insert> <MiddleMouse>
  cnoremap <S-Insert> <MiddleMouse>
endif

" }}}

" cursor {{{

highlight clear Cursor
highlight Cursor guifg=black guibg=gray
highlight clear iCursor
highlight iCursor guifg=white guibg=white
set guicursor+=n-v-c:blinkon0-block-Cursor
set guicursor+=i:blinkon0-ver25-Cursor/lCursor

" }}}

" error messages {{{

highlight clear ErrorMsg
highlight ErrorMsg ctermfg=gray ctermbg=black guifg=gray guibg=black
highlight clear Error
highlight Error ctermfg=gray ctermbg=black guifg=gray guibg=black

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

" turn off syntax coloring of long lines
set synmaxcol=1024

" print current syntax item
nnoremap <silent> <leader>si :echo SyntaxItem()<CR>

" refresh screen
nnoremap <silent> <leader>u :syntax sync fromstart<CR>:redraw!<CR>

" readjust window sizing
au VimResized * :wincmd =

" fix background color bleed in tmux / screen
" http://snk.tuxfamily.org/log/vim-256color-bce.html
" http://sunaku.github.io/vim-256color-bce.html
set t_ut=""

" }}}


" -----------------------------------------------------------------------------
" Editing

" never write or update the contents of any buffer unless we say so
set noautowrite
set noautowriteall
set noautoread

" read unix, dos and mac file formats
set fileformats=unix,dos,mac

" always keep cursor in the same column if possible
set nostartofline

" enable virtual edit in visual block mode
set virtualedit=block

" no annoying error noises
set noerrorbells
set vb t_vb=

" use a dialog when an operation has to be confirmed
set confirm

" show us the command we're typing
set showcmd

" always report the number of lines changed
set report=0

" highlight the screen line and column in the current window only
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn

" save undo history to an undo file
set undofile

" allow N number of changes to be undone
set undolevels=500

" store N previous vim commands and search patterns
set history=500

" always show statusline
set laststatus=2

" don't highlight matching parens
set noshowmatch

" turn on wildmenu completion
set wildmenu
set wildmode=list:longest,full

" disable some filetypes for completion
" blocking possibly large directories that usually are
" not of interest will speed up plugins like Command-T
set wildignore+=*.o,*.obj,*.dll,*.pyc
set wildignore=*~,*.DS_Store
set wildignore=.git/*,.hg/*,.svn/*
set wildignore+=*.gif,*.jpg,*.jpeg,*.png
set wildignore+=*.class,*.jar
set wildignore+=*.beam
set wildignore+=*.hi,*.p_hi,*.p_o

" give following files lower priority
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,CVS/,tags

" switch buffers without saving
set hidden

" vertical diffsplit by default
set diffopt+=vertical

" split windows below and to the right of the current
set splitright
set splitbelow

" allow no height, no width windows
set winminheight=0
set winminwidth=0

" write swap file every N characters
set updatecount=20

" do not redraw screen when executing macros
set lazyredraw

" indicates fast terminal connection
set ttyfast
set ttymouse=xterm2

" generous backspacing
set backspace=2

" number of screen lines around cursor
set scrolloff=8
set sidescrolloff=8
set sidescroll=8

" break lines at sensible place
set linebreak

" wrap on these chars
set whichwrap+=<,>,[,]

" hook arrow for wrapped characters
set showbreak=↪

" copy indent from current line when starting a new line
set autoindent

" do smart autoindenting when starting a new line
set smartindent

" let <Tab> count for N spaces in the file
set tabstop=2

" use N spaces for each step of (auto)indent
set shiftwidth=2

" let <Tab> count for N spaces while making edits
set softtabstop=2

" use the appropriate number of spaces to insert a <Tab>
set expandtab

" round indent to multiple of shiftwidth
set shiftround

" jump between the following characters that form pairs
set matchpairs+=<:>

" lines with equal indent form a fold
set foldmethod=indent

" higher numbers close fewer folds, 0 closes all folds.
set foldlevel=99

" visually break lines
set wrap

" show the line number in front of each line
set number

" show the line number relative to the line
"set relativenumber

" minimum number of columns to use for the line number
set numberwidth=1

" maximum width of text that is being inserted, 0 to disable
set textwidth=70

" insert N pixel lines between characters
set linespace=1

" <Tab> in front of a line inserts blanks according to shiftwidth
set smarttab

" don't wrap searches around the end of the file
set nowrapscan

" search options: incremental search, highlight search
set incsearch
set hlsearch

" ignore case in search patterns
set ignorecase

" override the ignorecase option if the search pattern contains upper case characters
set smartcase

" adjust the case of the match depending on the typed text
set infercase

" save and restore session data
set sessionoptions+=blank,buffers,curdir,folds
"                   |     |       |      |
"                   |     |       |      +------- Manually created folds, opened/closed folds, local fold options
"                   |     |       +-------------- The current directory
"                   |     +---------------------- Hidden and unloaded buffers
"                   +---------------------------- Empty windows
set sessionoptions+=globals,help,localoptions,options
"                   |       |    |            |
"                   |       |    |            +--------- All options and mappings, global values for local options
"                   |       |    +---------------------- Options and mappings local to a window or buffer
"                   |       +--------------------------- The help window
"                   +----------------------------------- Global variables that start with an uppercase letter and contain at least one lowercase letter
set sessionoptions+=resize,tabpages,winpos,winsize
"                   |      |        |      |
"                   |      |        |      +--------- Window sizes
"                   |      |        +---------------- Position of the whole Vim window
"                   |      +------------------------- All tab pages
"                   +-------------------------------- Size of the Vim window

" automatic formatting options
set formatoptions=
set formatoptions+=c " Auto-wrap comments using textwidth
set formatoptions+=r " Automatically insert the current comment leader after <Enter> in insert mode
set formatoptions+=o " Automatically insert the current comment leader after 'o' or 'O' in normal mode
set formatoptions+=q " Allow formatting of comments with gq
set formatoptions+=n " Recognize numbered lists when formatting text
set formatoptions+=2 " Use the indent of the secodn line of a paragraph for the rest of the paragraph instead of the first
set formatoptions+=l " Don't break long lines in insert mode
set formatoptions+=1 " Don't break a line after a one-letter word
set formatoptions+=j " Remove comment leader when joining two comments


" -----------------------------------------------------------------------------
" Searching

" use ag/pt/ack for grepping if available
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
elseif executable('pt')
  set grepprg=pt\ --nogroup\ --nocolor
elseif executable('ack')
  set grepprg=ack\ --nogroup\ --nocolor
endif


" -----------------------------------------------------------------------------
" Shortcuts

" Ctrl-Q to quit
nnoremap <C-Q> :qall<CR>
cnoremap <C-Q> <C-C>:qall<CR>
inoremap <C-Q> <C-O>:qall<CR>
vnoremap <C-Q> <ESC>:qall<CR>

" Editing
" --- selecting {{{

" bind escape key
call arpeggio#load()
Arpeggio inoremap jk <ESC>
Arpeggio cnoremap jk <C-C>
Arpeggio xnoremap jk <ESC>

" reselect pasted content
noremap gV `[v`]

" preserve selection when indenting
vnoremap > >gv
vnoremap < <gv
nnoremap > >>
nnoremap < <<

" }}}
" --- search and replace {{{

" use vimgrep without autocommands being invoked
nmap <leader>nv :noautocmd vim /

" highlight all occurrences of current word
nnoremap <silent> <leader><leader>h :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" replace word under cursor
nnoremap <leader><leader>r :'{,'}s/\<<C-R>=expand('<cword>')<CR>\>/
nnoremap <leader><leader>R :%s/\<<C-R>=expand('<cword>')<CR>\>/

" remove search highlights
nnoremap <silent> <leader><CR> :nohlsearch<CR>

" turn off any existing search
if has("autocmd")
  au VimEnter * nohls
endif

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
" --- formatting {{{

" format visual selection with spacebar
vnoremap <space> :!fmt<CR>

" }}}
" --- proofreading {{{

" find lines longer than 78 characters
nnoremap <leader><leader>l /^.\{-}\zs.\%>79v<CR>

" find two spaces after a period
nnoremap <leader><leader>. /\.\s\s\+\w/s+1<CR>

" find things like 'why ?' and 'now !'
nnoremap <leader><leader>! /\w\s\+[\?\!\;\.\,]/s+1<CR>

" find multiple newlines together
nnoremap <leader><leader>cr /\n\{3,\}/s+1<CR>

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
noremap <leader>rmm :%s///g<CR>

" don't make smartindent force a # over to the first column
inoremap # X<BS>#

" }}}
" --- redoing {{{

" maintain location in document while redoing
nnoremap . .`[

" qq to record, Q to replay
nnoremap Q @q

" }}}

" Lines
" --- toggle {{{

" toggle line wrap
noremap <silent> <F3> :set nowrap!<CR>
inoremap <silent> <F3> <C-O>:set nowrap!<CR>

" toggle line numbers
"noremap <silent> <F4> :set nonu!<CR>
"inoremap <silent> <F4> <C-O>:set nonu!<CR>
"nnoremap <silent> <F4> :NumbersOnOff<CR>
"inoremap <silent> <F4> <C-O>:NumbersOnOff<CR>
nnoremap <silent> <F4> :NumbersToggle<CR>
inoremap <silent> <F4> <C-O>:NumbersToggle<CR>

" toggle line and column highlighting
noremap <silent> <F5> :set nocursorline! nocursorcolumn!<CR>
inoremap <silent> <F5> <C-O>:set nocursorline! nocursorcolumn!<CR>

" toggle spell checking
noremap <silent> <F7> :set spell! spelllang=en_us<CR>
inoremap <silent> <F7> <C-O>:set spell! spelllang=en_us<CR>

" convert all tabs into spaces and continue session with spaces
nnoremap <silent><expr> g<M-t> ':set expandtab<CR>:retab!<CR>:echo "Tabs have been converted to spaces"<CR>'

" convert all spaces into tabs and continue session with tabs
nnoremap <silent><expr> g<M-T> ':set noexpandtab<CR>:%retab!<CR>:echo "Spaces have been converted to tabs"<CR>'

" }}}
" --- split/join {{{

" keep the cursor in place while joining lines
nnoremap J mzJ`z

" split line
nnoremap S i<CR><ESC>^mwgk:silent! s/\v +$//<CR>:noh<CR>`w

" }}}
" --- movement {{{

" move between beginning and end of line
nnoremap H ^
vnoremap H ^
nnoremap L g_
vnoremap L g_

" move to middle of current line
nmap <expr> gM (strlen(getline("."))/2)."<Bar>"

" annoying default mappings
inoremap <S-Up> <C-O>gk
inoremap <S-Down> <C-O>gj
noremap <S-Up> gk
noremap <S-Down> gj

" <PageUp> and <PageDown> do silly things in normal mode with folds
noremap <PageUp> <C-U>
noremap <PageDown> <C-D>

" scroll four lines at a time
nnoremap <C-E> 4<C-E>
nnoremap <C-Y> 4<C-Y>

" }}}

" Programming
" --- tabs {{{

noremap <silent> g<C-T> :tabnew<CR>
noremap <silent> g<C-N> :tabnext<CR>
noremap <silent> g<C-P> :tabprevious<CR>
noremap <silent> g<C-W> :tabclose<CR>
noremap <silent> <leader>to :tabonly<CR>
noremap <leader>tm :tabmove<space>
noremap <leader>te :tabedit <C-R>=expand("%:p:h")<CR>/

" http://vim.wikia.com/wiki/Using_tab_pages
" press Shift-F12 to show all buffers in tabs, or to close all tabs
" it alternately executes :tab ball and :tabo
" see also: vim -p file1 file2
let notabs = 0
nnoremap <silent> <S-F12> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

" allows typing :tabv myfile.txt to view the specified file in a new read-only tab
cabbrev tabv tab sview +setlocal\ nomodifiable

" }}}
" --- merging {{{

" highlight conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" jump to next conflict marker
nnoremap <silent> <leader>jc /^\(<\\|=\\|>\)\{7\}\([^=].\+\)\?$<CR>

" }}}
" --- hex {{{

" toggle between hex and binary, after opening file with `vim -b`
noremap <silent> <F9> :call HexMe()<CR>

" }}}
" --- conceal {{{

" toggle concealed characters
noremap <silent> <leader><leader>cl :call ConcealToggle()<CR>

" }}}

" Navigation
" ---buffers {{{

" buffer navigation
nmap <silent> gd :bdelete<CR>
nmap <silent> gb :bnext<CR>
nmap <silent> gB :bprev<CR>

" }}}

" ---windows {{{

" map alt-[h,j,k,l,=,_,|] to resizing a window split
" map alt-[s,v] to horizontal and vertical split respectively
" map alt-[n,p] to moving to next and previous window respectively
" map alt-[H,J,K,L] to repositioning a window split
"nnoremap <silent> <M-h> <C-W><
nnoremap <silent> <M-h> :ObviousResizeLeft<CR>
"nnoremap <silent> <M-j> <C-W>-
nnoremap <silent> <M-j> :ObviousResizeDown<CR>
"nnoremap <silent> <M-k> <C-W>+
nnoremap <silent> <M-k> :ObviousResizeUp<CR>
"nnoremap <silent> <M-l> <C-W>>
nnoremap <silent> <M-l> :ObviousResizeRight<CR>
nnoremap <silent> <M-=> <C-W>=
nnoremap <silent> <M-_> <C-W>_
nnoremap <silent> <M-\|> <C-W>\|
nnoremap <silent> <M-s> :split<CR>
nnoremap <silent> <M-v> :vsplit<CR>
nnoremap <silent> <M-N> <C-W><C-W>
nnoremap <silent> <M-P> <C-W><S-W>
nnoremap <silent> <M-H> <C-W>H
nnoremap <silent> <M-J> <C-W>J
nnoremap <silent> <M-K> <C-W>K
nnoremap <silent> <M-L> <C-W>L

" scroll specified file simultaneously in vsplit window
nnoremap <leader>sb :SplitScrollSpecified<space>

" scroll all windows simultaneously
nnoremap <silent> <S-F5> :windo set scrollbind!<CR>
inoremap <silent> <S-F5> <C-O>:windo set scrollbind!<CR>

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

au BufEnter,BufRead,BufNewFile,BufWrite {*.bib} set ft=bib
au BufEnter,BufRead,BufNewFile,BufWrite {*.cfg,.ackrc,.ctags,.dunstrc,.hgrc,.npmrc} set ft=cfg
au BufEnter,BufRead,BufNewFile,BufWrite {*.clj,*.cljs,*.edn} set ft=clojure
au BufEnter,BufRead,BufNewFile,BufWrite {*.coffee} set ft=coffee
au BufEnter,BufRead,BufNewFile,BufWrite {.curlrc,.gitignore,.gitattributes,.hgignore,.jshintignore} set ft=conf
au BufEnter,BufRead,BufNewFile,BufWrite {.conkyrc*} set ft=conkyrc
au BufEnter,BufRead,BufNewFile,BufWrite {*.c} set ft=c
au BufEnter,BufRead,BufNewFile,BufWrite {*.cpp,*.hpp} set ft=cpp
au BufEnter,BufRead,BufNewFile,BufWrite {*.cs} set ft=cs
au BufEnter,BufRead,BufNewFile,BufWrite {*.css} set ft=css
au BufEnter,BufRead,BufNewFile,BufWrite {*.csv,*.psv,*.tsv} set ft=csv
au BufEnter,BufRead,BufNewFile,BufWrite {*.pxd,*.pxi,*.pyx} set ft=cython
au BufEnter,BufRead,BufNewFile,BufWrite {*.d} set ft=d
au BufEnter,BufRead,BufNewFile,BufWrite {*.dart} set ft=dart
au BufEnter,BufRead,BufNewFile,BufWrite {*.dock,Dockerfile*} set ft=dockerfile
au BufEnter,BufRead,BufNewFile,BufWrite {*.eex} set ft=eelixir
au BufEnter,BufRead,BufNewFile,BufWrite {*.ex,*.exs} set ft=elixir
au BufEnter,BufRead,BufNewFile,BufWrite {*.erl,*.hrl,rebar.config} set ft=erlang
au BufEnter,BufRead,BufNewFile,BufWrite {*.egs} set ft=egs
au BufEnter,BufRead,BufNewFile,BufWrite {*.erb} set ft=eruby
au BufEnter,BufRead,BufNewFile,BufWrite {*.fs,*.fsi,*.fsx} set ft=fs
au BufEnter,BufRead,BufNewFile,BufWrite {.gitconfig} set ft=gitconfig
au BufEnter,BufRead,BufNewFile,BufWrite {*.go} set ft=go
au BufEnter,BufRead,BufNewFile,BufWrite {*.groovy,*.gradle} set ft=groovy
au BufEnter,BufRead,BufNewFile,BufWrite {*.gs} set ft=gorilla
au BufEnter,BufRead,BufNewFile,BufWrite {*.html,*.htm,*.ejs} set ft=html
au BufEnter,BufRead,BufNewFile,BufWrite {*.html.ep,*.html.epl} set ft=html.epl
au BufEnter,BufRead,BufNewFile,BufWrite {*.haml,*.hamlbars,*.hamlc} set ft=haml
au BufEnter,BufRead,BufNewFile,BufWrite {*.hs} set ft=haskell
au BufEnter,BufRead,BufNewFile,BufWrite {.inputrc} set ft=readline
au BufEnter,BufRead,BufNewFile,BufWrite {*.jade} set ft=jade
au BufEnter,BufRead,BufNewFile,BufWrite {*.java} set ft=java
au BufEnter,BufRead,BufNewFile,BufWrite {*.javap} set ft=java-bytecode
au BufEnter,BufRead,BufNewFile,BufWrite {pom.xml} set ft=pom
au BufEnter,BufRead,BufNewFile,BufWrite {*.js,.jshintrc} set ft=javascript
au BufEnter,BufRead,BufNewFile,BufWrite {*.json} set ft=json
au BufEnter,BufRead,BufNewFile,BufWrite {*.json5} set ft=json5
au BufEnter,BufRead,BufNewFile,BufWrite {*.j2,*.jinja,*.jinja2} set ft=jinja
au BufEnter,BufRead,BufNewFile,BufWrite {*.jl} set ft=julia
au BufEnter,BufRead,BufNewFile,BufWrite {*.kv} set ft=kivy
au BufEnter,BufRead,BufNewFile,BufWrite {*.ledger} set ft=ledger
au BufEnter,BufRead,BufNewFile,BufWrite {*.less} set ft=less
au BufEnter,BufRead,BufNewFile,BufWrite {*.ly,*.ily} set ft=lilypond
au BufEnter,BufRead,BufNewFile,BufWrite {*.lisp} set ft=lisp
au BufEnter,BufRead,BufNewFile,BufWrite {*.lua} set ft=lua
au BufEnter,BufRead,BufNewFile,BufWrite {*.markdown,*.md,*.mkd,*.cpt,*.ronn} set ft=markdown conceallevel=0
au BufEnter,BufRead,BufNewFile,BufWrite {*.nim} set ft=nim
au BufEnter,BufRead,BufNewFile,BufWrite {*.ml,*.mli} set ft=ocaml
au BufEnter,BufRead,BufNewFile,BufWrite {*.php,*.ctp,*.hh,*.hhi} set ft=php
au BufEnter,BufRead,BufNewFile,BufWrite {*.pl,*.pm,*.t} set ft=perl
au BufEnter,BufRead,BufNewFile,BufWrite {*.pro} set ft=pro
au BufEnter,BufRead,BufNewFile,BufWrite {*.py,.pdbrc,.pythonrc,.python_history} set ft=python
au BufEnter,BufRead,BufNewFile,BufWrite {*.rb,*.god,*.rabl,.caprc,.irbrc,Capfile,Gemfile,Rakefile,Thorfile,config.ru,irb_tempfile*} set ft=ruby
au BufEnter,BufRead,BufNewFile,BufWrite {*.rkt} set ft=racket
au BufEnter,BufRead,BufNewFile,BufWrite {*.rs} set ft=rust
au BufEnter,BufRead,BufNewFile,BufWrite {*.rst} set ft=rst
au BufEnter,BufRead,BufNewFile,BufWrite {*.sass} set ft=sass
au BufEnter,BufRead,BufNewFile,BufWrite {*.scss} set ft=scss
au BufEnter,BufRead,BufNewFile,BufWrite {*.scala} set ft=scala
au BufEnter,BufRead,BufNewFile,BufWrite {*.sbt} set ft=sbt
au BufEnter,BufRead,BufNewFile,BufWrite {*.scm} set ft=scheme
au BufEnter,BufRead,BufNewFile,BufWrite {.screenrc} set ft=screen
au BufEnter,BufRead,BufNewFile,BufWrite {*.sh,*.install,.bashrc,.bash_logout,.bash_profile,.xinitrc,.xsession,PKGBUILD} set ft=sh
au BufEnter,BufRead,BufNewFile,BufWrite {*.slim} set ft=slim
au BufEnter,BufRead,BufNewFile,BufWrite {*.sls} set ft=sls
au BufEnter,BufRead,BufNewFile,BufWrite {*.sql,.psqlrc} set ft=sql
au BufEnter,BufRead,BufNewFile,BufWrite {*.styl} set ft=stylus
au BufEnter,BufRead,BufNewFile,BufWrite {*.swift} set ft=swift
au BufEnter,BufRead,BufNewFile,BufWrite {*.tex} set ft=tex
au BufEnter,BufRead,BufNewFile,BufWrite {*.textile} set ft=textile
au BufEnter,BufRead,BufNewFile,BufWrite {*.tmux,*tmux.conf*} set ft=tmux-conf
au BufEnter,BufRead,BufNewFile,BufWrite {*.toml} set ft=toml
au BufEnter,BufRead,BufNewFile,BufWrite {*.tup,Tupfile} set ft=tup
au BufEnter,BufRead,BufNewFile,BufWrite {*.vim,*.vimencrypt,*viminfo*,*vimrc*} set ft=vim
au BufEnter,BufRead,BufNewFile,BufWrite {.wgetrc} set ft=wget
au BufEnter,BufRead,BufNewFile,BufWrite {.Xdefaults,.Xresources} set ft=xdefaults
au BufEnter,BufRead,BufNewFile,BufWrite {*.xml,*.xaml} set ft=xml
au BufEnter,BufRead,BufNewFile,BufWrite {.Xmodmap} set ft=xmodmap
au BufEnter,BufRead,BufNewFile,BufWrite {*.bin} set ft=xxd
au BufEnter,BufRead,BufNewFile,BufWrite {*.zsh,.zprofile,.zshrc} set ft=zsh

" }}}

" omnicompletion {{{

autocmd FileType c setlocal omnifunc=ccomplete#Complete
autocmd FileType clojure setlocal omnifunc=clojurecomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType erlang setlocal omnifunc=erlang_complete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType html,xhtml setlocal omnifunc=htmlcomplete#CompleteTags
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
autocmd FileType javascript setlocal omnifunc=js#CompleteJS
autocmd FileType lisp,racket,scheme setlocal equalprg=scmindent
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType sql setlocal omnifunc=sqlcomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" }}}

" dictionaries {{{

"set dictionary=/usr/share/dict/words
autocmd FileType javascript setlocal dictionary+=$HOME/.vim/dict/javascript.dict
autocmd FileType javascript setlocal dictionary+=$HOME/.vim/dict/node.dict

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

" digraphs {{{

if has("digraphs")
  " ellipsis (…)
  digraph ., 8230
endif

" }}}


" -----------------------------------------------------------------------------
" Plugin Settings

if filereadable(expand('~/.vim/settings.vim'))
  source ~/.vim/settings.vim
endif

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

" map ; to :
nnoremap ; :
vnoremap ; :

" turn off F1 help shortcut
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

" turn off manual key
nnoremap K <nop>
vnoremap K <nop>

" never use ZZ, too dangerous
nnoremap ZZ <nop>

" disable <C-A>, interferes with tmux prefix
noremap <C-A> <nop>
inoremap <C-A> <nop>

" Ctrl-Q to quit
nnoremap <C-Q> :qall<CR>
cnoremap <C-Q> <C-C>:qall<CR>
inoremap <C-Q> <C-O>:qall<CR>
onoremap <C-Q> <ESC>:qall<CR>
vnoremap <C-Q> <ESC>:qall<CR>

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

" prefer blowfish2 encryption method
silent! set cryptmethod=blowfish2

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

" greatly restrict local .vimrc and .exrc files
set secure

" disable modelines, use securemodelines.vim instead
set nomodeline
let g:secure_modelines_allowed_items = [
            \ "expandtab", "et", "noexpandtab", "noet",
            \ "filetype", "ft",
            \ "foldlevel", "fdl",
            \ "foldmarker", "fmr",
            \ "foldmethod", "fdm",
            \ "rightleft", "rl", "norightleft", "norl",
            \ "shiftwidth", "sw",
            \ "softtabstop", "sts",
            \ "tabstop", "ts",
            \ "textwidth", "tw"
            \ ]

" switching buffers
set switchbuf=useopen,usetab,newtab
"             |       |      |
"             |       |      +-------- Prefer opening quickfix windows in new tabs
"             |       +--------------- Consider windows in other tab pages wrt useopen
"             +----------------------- Jump to the first open window that contains the specified buffer if there is one

" do not consider octal numbers for C-A/C-X
set nrformats-=octal

" configure viminfo then read from it
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

if ($TERM =~ "256" || &t_Co >= 256 || $COLORTERM == "gnome-terminal")
  \ || has('gui_running')
  " jellyx
  set t_Co=256
  "let g:seoul256_background = 233
  "colorscheme seoul256
  colorscheme jellyx
elseif $TERM == "linux" || $TERM == "tmux" || $TERM == "screen"
  " miro8
  colorscheme miro8
  highlight clear Pmenu
  highlight Pmenu ctermfg=7 ctermbg=0
endif

" }}}

" gvim {{{

if has('gui_running')
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
  " use console style tabbed interface
  set guioptions-=e
  " use console dialogs instead of popups
  set guioptions+=c
  " use lightline-compatible monaco
  set guifont=Monaco\ for\ Powerline\ 16
  " allow gvim window to occupy whole screen
  set guiheadroom=0
  " set normal mode cursor to unblinking Cursor highlighted block
  set guicursor+=n:blinkon0-block-Cursor
  " set insert and command line mode cursor to 25% width unblinking iCursor highlighted block
  set guicursor+=i-c:blinkon0-ver25-iCursor
  " set visual mode cursor to unblinking vCursor highlighted block
  set guicursor+=v:blinkon0-block-vCursor
  " set replace mode cursor to unblinking rCursor highlighted block
  set guicursor+=r:blinkon0-block-rCursor
  " set operator pending mode cursor to 50% height unblinking oCursor highlighted block
  set guicursor+=o:blinkon0-hor50-oCursor
  " no visual bell
  if has('autocmd')
    augroup errorbells
      autocmd!
      autocmd GUIEnter * set vb t_vb=
    augroup END
  endif
  " resize font
  noremap <silent> <M--> :Smaller<CR>
  noremap <silent> <M-+> :Bigger<CR>
  " paste selection with <S-Ins>
  inoremap <S-Insert> <MiddleMouse>
  cnoremap <S-Insert> <MiddleMouse>
endif

" }}}

" highlighting {{{

" searches
highlight clear Search
highlight Search term=bold cterm=bold ctermfg=0 ctermbg=191 gui=bold guifg=black guibg=#DFFF5F
highlight clear IncSearch
highlight IncSearch term=bold cterm=bold ctermfg=0 ctermbg=214 gui=bold guifg=black guibg=#FFAF00

" matching parens
highlight clear MatchParen
highlight MatchParen term=bold,NONE cterm=bold,NONE ctermfg=179 gui=bold,NONE guifg=#D7AF5F

" cursor
highlight clear Cursor
highlight Cursor guifg=black guibg=gray
highlight clear iCursor
highlight iCursor guifg=white guibg=#FFFFAF
highlight clear vCursor
highlight vCursor guifg=white guibg=#5F5F87
highlight clear rCursor
highlight rCursor guifg=black guibg=#CF6A4C
highlight clear oCursor
highlight oCursor guifg=black guibg=gray

" cursor line and column (seoul256)
"highlight clear CursorLine
"highlight CursorLine term=NONE cterm=NONE ctermbg=234 gui=NONE guibg=#1C1C1C
"highlight clear CursorColumn
"highlight CursorColumn term=NONE cterm=NONE ctermbg=234 gui=NONE guibg=#1C1C1C
"highlight clear ColorColumn
"highlight ColorColumn term=NONE cterm=NONE ctermbg=95 gui=NONE guibg=#875F5F

" error, warning and mode messages
highlight clear Error
highlight Error ctermfg=gray ctermbg=NONE guifg=gray guibg=NONE
highlight clear ErrorMsg
highlight ErrorMsg ctermfg=gray ctermbg=NONE guifg=gray guibg=NONE
highlight clear WarningMsg
highlight ErrorMsg ctermfg=gray ctermbg=NONE guifg=gray guibg=NONE
highlight clear ModeMsg
highlight ModeMsg ctermfg=gray ctermbg=NONE guifg=gray guibg=NONE

" question and more messages
highlight clear Question
highlight Question term=standout ctermfg=179 gui=bold guifg=#D7AF5F
highlight clear MoreMsg
highlight MoreMsg term=bold cterm=bold ctermfg=179 gui=bold guifg=#D7AF5F

" directories
highlight clear Directory
highlight Directory term=bold cterm=bold ctermfg=110 gui=bold guifg=#87AFD7

" spelling
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" }}}

" show listchars {{{

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
nnoremap <silent> <leader>sa :call SyntaxAttr()<CR>
nnoremap <silent> <leader>si :echo SyntaxItem()<CR>

" refresh screen
nnoremap <silent> <leader>u :syntax sync fromstart<CR>:redraw!<CR>

" readjust window sizing
augroup autoresize
  autocmd!
  autocmd VimResized * :wincmd =
augroup END

" fix background color bleed in tmux / screen
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

" don't show us the command we're typing
set noshowcmd

" always report the number of lines changed
set report=0

" don't highlight the screen line or column
set nocursorline nocursorcolumn

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
set wildignore+=*~,*.DS_Store
set wildignore+=.git/*,.subgit/*,.hg/*,.subhg/*,.svn/*
set wildignore+=*.gif,*.jpg,*.jpeg,*.png
set wildignore+=*.class,*.jar
set wildignore+=*.beam
set wildignore+=*.hi,*.p_hi,*.p_o

" give following files lower priority
set suffixes+=.bak,~,.swp,.o,.info,.aux
set suffixes+=.log,.dvi,.bbl,.blg,.brf
set suffixes+=.cb,.ind,.idx,.ilg,.inx
set suffixes+=.out,.toc,CVS/,tags

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
set sidescrolloff=16
set sidescroll=1

" break lines at sensible place
set linebreak

" wrap on these chars
set whichwrap+=<,>,[,]

" indicate wrapped characters
set showbreak=⁍

" copy indent from current line when starting a new line
set autoindent

" sets the width of a <Tab> character
set tabstop=2

" when enabled, causes spaces to be used instead of <Tab> characters
set expandtab

" when enabled, sets the amount of whitespace to be inserted/removed on <Tab> / <BS>
" if softtabstop < tabstop, and expandtab is disabled (with noexpandtab), vim will start <Tab>s with whitespace
" this initial whitespace will be dynamically converted to / from <Tab> characters as the indent level of 'tabstop' is reached / unreached
set softtabstop=2

" sets the amount of space to insert / remove while using indentation commands in normal mode (>, <)
set shiftwidth=2

" round indent to multiple of shiftwidth
set shiftround

" jump between the following characters that form pairs
set matchpairs+=<:>
set matchpairs+=«:»
set matchpairs+=「:」

" triple matching curly braces form a fold
set foldmethod=marker

" higher numbers close fewer folds, 0 closes all folds.
set foldlevel=99

" automatically open folds on these commands
set foldopen=insert,mark,percent,tag,undo

" deepest fold is 3 levels
set foldnestmax=3

" visually break lines
set wrap

" show the line number in front of each line
set number

" minimum number of columns to use for the line number
set numberwidth=1

" don't autowrap text as it's being inserted
set textwidth=0

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
set formatoptions+=r " Automatically insert the current comment leader after <Enter> in insert mode
set formatoptions+=o " Automatically insert the current comment leader after 'o' or 'O' in normal mode
set formatoptions+=q " Allow formatting of comments with gq
set formatoptions+=n " Recognize numbered lists when formatting text
set formatoptions+=2 " Use the indent of the second line of a paragraph for the rest of the paragraph instead of the first
set formatoptions+=l " Don't break long lines in insert mode
set formatoptions+=1 " Don't break a line after a one-letter word
set formatoptions+=j " Remove comment leader when joining two comments


" -----------------------------------------------------------------------------
" Searching

" use ag/pt/ack for grepping if available
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --unrestricted
elseif executable('pt')
  set grepprg=pt\ --nogroup\ --nocolor
elseif executable('ack')
  set grepprg=ack\ --nogroup\ --nocolor
endif


" -----------------------------------------------------------------------------
" Shortcuts

" Editing
" --- selecting {{{

" bind escape key
call arpeggio#load()
Arpeggio noremap jk <ESC>
Arpeggio inoremap jk <ESC>
Arpeggio cnoremap jk <C-C>

" visually select the text that was last edited/pasted
nnoremap <expr> gV '`[' . strpart(getregtype(), 0, 1) . '`]'

" preserve selection when indenting
vnoremap > >gv
vnoremap < <gv
nnoremap > >>
nnoremap < <<

" }}}
" --- toggle showcmd {{{

nnoremap <silent> <leader>sc :set showcmd!<CR>

" }}}
" --- toggle virtualedit=all {{{

nnoremap <silent> <leader><leader>v :let &virtualedit=&virtualedit=="block" ? "all" : "block" <Bar> set virtualedit?<CR>

" }}}
" --- don't move back the cursor one position when exiting insert mode {{{

augroup cursorpos
  autocmd!
  autocmd InsertEnter * let CursorColumnI = col('.')
  autocmd CursorMovedI * let CursorColumnI = col('.')
  autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif
augroup END

" }}}
" --- return to last edit position {{{

augroup cursormem
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END

" }}}
" --- search and replace {{{

" turn off any existing search
if has('autocmd')
  augroup searchhighlight
    autocmd!
    autocmd VimEnter * nohls
  augroup END
endif

" remove search highlights
nnoremap <silent> <leader><CR> :nohlsearch<CR>

" use vimgrep without autocommands being invoked
nnoremap <leader>nv :noautocmd vim /

" highlight all occurrences of current word
nnoremap <silent> <leader><leader>h :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" }}}
" --- pasting {{{

" yank to end of line
noremap Y y$

" copy to clipboard
vnoremap <leader>y "+yy<ESC>
nnoremap <leader>y "+y
nnoremap <leader>Y "+y$

" paste from clipboard
noremap <leader>p "+p
noremap <leader>P "+P

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

" quick write
nnoremap <silent> <leader>w :w<CR>

" sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" expand %% to the path of the current buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" change to directory of file
nnoremap <silent> <leader>. :cd%:h<CR>

" fix windoze ^M
" alternative to `dos2unix file`
noremap <leader>rmm :%s///g<CR>

" prevent accidental writes to buffers that shouldn't be edited
augroup readonly
  autocmd!
  autocmd BufRead *.orig set readonly
  autocmd BufRead *.pacnew set readonly
augroup END

" }}}
" --- redoing {{{

" maintain location in document while redoing
nnoremap . .`[

" qq to record, Q to replay
nnoremap Q @q

" }}}
" --- words {{{

" dictionary
"set dictionary=/usr/share/dict/words

" spelling
let g:spellfile_URL = '/usr/share/vim/vimfiles/spell'
if version >= 700
  set spl=en spell
  set nospell
endif

" digraphs
if has('digraphs')
  " (฿) BTC
  digraph B\| 3647
  " (‘) curly left single quote
  digraph Ql 8216
  " (’) curly right single quote
  digraph Qr 8217
  " (“) curly left double quote
  digraph ql 8220
  " (”) curly right double quote
  digraph qr 8221
  " (…) ellipsis
  digraph ., 8230
  " (∈) equivalent to `(elem)`: http://doc.perl6.org/routine/%E2%88%88
  digraph (- 8712
  " (∉) equivalent to `!(elem)`: http://doc.perl6.org/routine/%E2%88%89
  digraph (/ 8713
  " (∋) equivalent to `(cont)`: http://doc.perl6.org/routine/%E2%88%8B
  digraph -) 8715
  " (∌) equivalent to `!(cont)`: http://doc.perl6.org/routine/%E2%88%8C
  digraph /) 8716
  " (∖) equivalent to `(-)`: http://doc.perl6.org/routine/%E2%88%96
  digraph \\ 8726
  " (∩) equivalent to `(&)`: http://doc.perl6.org/routine/%E2%88%A9
  digraph (U 8745
  " (∪) equivalent to `(|)`: http://doc.perl6.org/routine/%E2%88%AA
  digraph )U 8746
  " (≼) equivalent to `(<+)`: http://doc.perl6.org/routine/%E2%89%BC
  digraph <+ 8828
  " (≽) equivalent to `(+>)`: http://doc.perl6.org/routine/%E2%89%BD
  digraph +> 8829
  " (⊂) equivalent to `(<)`: http://doc.perl6.org/routine/%E2%8A%82
  digraph (c 8834
  " (⊃) equivalent to `(>)`: http://doc.perl6.org/routine/%E2%8A%83
  digraph )c 8835
  " (⊄) equivalent to `!(<)`: http://doc.perl6.org/routine/%E2%8A%84
  digraph c/ 8836
  " (⊅) equivalent to `!(>)`: http://doc.perl6.org/routine/%E2%8A%85
  digraph \c 8837
  " (⊆) equivalent to `(<=)`: http://doc.perl6.org/routine/%E2%8A%86
  digraph (_ 8838
  " (⊇) equivalent to `(>=)`: http://doc.perl6.org/routine/%E2%8A%87
  digraph )_ 8839
  " (⊈) equivalent to `!(<=)`: http://doc.perl6.org/routine/%E2%8A%88
  digraph _/ 8840
  " (⊉) equivalent to `!(>=)`: http://doc.perl6.org/routine/%E2%8A%89
  digraph \_ 8841
  " (⊍) equivalent to `(.)`: http://doc.perl6.org/routine/%E2%8A%8D
  digraph U. 8845
  " (⊎) equivalent to `(+)`: http://doc.perl6.org/routine/%E2%8A%8E
  digraph U+ 8846
  " (⊖) equivalent to `(^)`: http://doc.perl6.org/routine/%E2%8A%96
  digraph 0- 8854
endif

" }}}

" Lines
" --- toggle {{{

" toggle line wrap
noremap <silent> <F3> :set nowrap!<CR>
inoremap <silent> <F3> <C-O>:set nowrap!<CR>
vnoremap <silent> <F3> <ESC>:set nowrap!<CR>gv

" toggle line numbers
nnoremap <silent> <F4> :NumbersToggle<CR>
inoremap <silent> <F4> <C-O>:NumbersToggle<CR>
vnoremap <silent> <F4> <ESC>:NumbersToggle<CR>gv

" toggle line and column highlighting
noremap <silent> <F5> :set nocursorline! nocursorcolumn!<CR>
inoremap <silent> <F5> <C-O>:set nocursorline! nocursorcolumn!<CR>
vnoremap <silent> <F5> <ESC>:set nocursorline! nocursorcolumn!<CR>gv

" toggle spell checking
noremap <silent> <F7> :set spell! spelllang=en_us<CR>
inoremap <silent> <F7> <C-O>:set spell! spelllang=en_us<CR>
vnoremap <silent> <F7> <ESC>:set spell! spelllang=en_us<CR>gv

" convert all tabs into spaces and continue session with spaces
nnoremap <silent><expr> g<M-t> ':set expandtab<CR>:retab!<CR>:echo "Tabs have been converted to spaces"<CR>'

" convert all spaces into tabs and continue session with tabs
nnoremap <silent><expr> g<M-T> ':set noexpandtab<CR>:%retab!<CR>:echo "Spaces have been converted to tabs"<CR>'

" }}}
" --- split/join {{{

" keep the cursor in place while joining lines
nnoremap J mzJ`z

" split line
nnoremap <silent> S i<CR><ESC>^mwgk:silent! s/\v +$//<CR>:noh<CR>`w

" }}}
" --- editing {{{

" delete char adjacent-right without moving cursor over one from the left
nnoremap <silent> gx @='lxh'<CR>

"  }}}
" --- movement {{{

" move between beginning and end of line
nnoremap H ^
vnoremap H ^
nnoremap L g_
vnoremap L g_

" move to middle of current line
nnoremap <expr> - (strlen(getline("."))/2)."<Bar>"

" move to last change
nnoremap gI `.

" <PageUp> and <PageDown> do silly things in normal mode with folds
noremap <PageUp> <C-U>
noremap <PageDown> <C-D>

" scroll four lines at a time
nnoremap <C-E> 4<C-E>
nnoremap <C-Y> 4<C-Y>

" }}}

" Programming
" --- tabs {{{

" set tabstop, shiftwidth and softtabstop to same (specified) value
nnoremap <leader>ts :Stab<CR>

" echo tabstop, shiftwidth, softtabstop and expandtab values
nnoremap <leader>st :call SummarizeTabs()<CR>

"  }}}
" --- folds {{{

" toggle folds with g+spacebar
nnoremap <silent> g<space> :exe ":silent! normal za"<CR>

" focus just the current line with minimal number of folds open
nnoremap <silent> <leader><leader><space> :call FocusLine()<CR>

" make zO recursively open whatever fold we're in, even if it's partially open
nnoremap zO zczO

" set fold level
nnoremap <leader>f0 :set foldlevel=0<CR>
nnoremap <leader>f1 :set foldlevel=1<CR>
nnoremap <leader>f2 :set foldlevel=2<CR>
nnoremap <leader>f3 :set foldlevel=3<CR>
nnoremap <leader>f4 :set foldlevel=4<CR>
nnoremap <leader>f5 :set foldlevel=5<CR>
nnoremap <leader>f6 :set foldlevel=6<CR>
nnoremap <leader>f7 :set foldlevel=7<CR>
nnoremap <leader>f8 :set foldlevel=8<CR>
nnoremap <leader>f9 :set foldlevel=9<CR>

"  }}}
" --- merging {{{

" highlight conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" jump to next conflict marker
nnoremap <silent> <leader>jc /^\(<\\|=\\|>\)\{7\}\([^=].\+\)\?$<CR>

" }}}
" --- hex {{{

" toggle between hex and binary, after opening file with `vim -b`
noremap <silent> <F9> :call HexMe()<CR>
inoremap <silent> <F9> <C-O>:call HexMe()<CR>
vnoremap <silent> <F9> <ESC>:call HexMe()<CR>gv

" }}}
" --- unicode {{{

" toggle display unicode operators in code without changing the underlying file
noremap <silent> <leader><leader>cl :call ConcealToggle()<CR>

" }}}

" Navigation
" --- buffers {{{

" buffer navigation
nnoremap <silent> gd :bdelete<CR>
nnoremap <silent> gb :bnext<CR>
nnoremap <silent> gB :bprev<CR>
nnoremap <silent> <leader>1 :<C-U>buffer 1<CR>
nnoremap <silent> <leader>2 :<C-U>buffer 2<CR>
nnoremap <silent> <leader>3 :<C-U>buffer 3<CR>
nnoremap <silent> <leader>4 :<C-U>buffer 4<CR>
nnoremap <silent> <leader>5 :<C-U>buffer 5<CR>
nnoremap <silent> <leader>6 :<C-U>buffer 6<CR>
nnoremap <silent> <leader>7 :<C-U>buffer 7<CR>
nnoremap <silent> <leader>8 :<C-U>buffer 8<CR>
nnoremap <silent> <leader>9 :<C-U>buffer 9<CR>

" }}}
" --- windows {{{

" map alt-[h,j,k,l,=,_,|] to resizing a window split
" map alt-[s,v] to horizontal and vertical split respectively
" map alt-[N,P] to moving to next and previous window respectively
" map alt-[H,J,K,L] to repositioning a window split
nnoremap <silent> <M-h> :<C-U>ObviousResizeLeft<CR>
nnoremap <silent> <M-j> :<C-U>ObviousResizeDown<CR>
nnoremap <silent> <M-k> :<C-U>ObviousResizeUp<CR>
nnoremap <silent> <M-l> :<C-U>ObviousResizeRight<CR>
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

" create a split on the given side
nnoremap <leader>swh :leftabove vsp<CR>
nnoremap <leader>swl :rightbelow vsp<CR>
nnoremap <leader>swk :leftabove sp<CR>
nnoremap <leader>swj :rightbelow sp<CR>

" scroll specified file simultaneously in vsplit window
nnoremap <leader>sb :SplitScrollSpecified<space>

" scroll all windows simultaneously
nnoremap <silent> <S-F5> :windo set scrollbind!<CR>
inoremap <silent> <S-F5> <C-O>:windo set scrollbind!<CR>

" }}}
" --- tabs {{{

" new tab
nnoremap <silent> <M-Down> :tabnew<CR>

" close tab
nnoremap <silent> <M-d> :tabclose<CR>

" switch between tabs
nnoremap <silent> ( @='gT'<CR>
nnoremap <silent> ) @='gt'<CR>

" move tab adjacent
nnoremap <silent> g( :<C-U>:execute "tabmove -" . v:count1<CR>
nnoremap <silent> g) :<C-U>:execute "tabmove +" . v:count1<CR>

" move tab
noremap <leader>tm :tabmove<space>

" open specified file in new tab
noremap <leader>te :tabedit <C-R>=expand("%:p:h")<CR>/

" allows typing :tabv myfile.txt to view the specified file in a new read-only tab
cabbrev tabv tab sview +setlocal\ nomodifiable

" press Shift-F12 to show all buffers in tabs, or to close all tabs
let notabs = 0
nnoremap <silent> <S-F12> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

" show and hide tabline
nnoremap <silent> <M-S-Up> :set showtabline=0<CR>
nnoremap <silent> <M-S-Down> :set showtabline=1<CR>

" }}}


" -----------------------------------------------------------------------------
" Filetype Settings

if filereadable(expand('~/.vim/filetypes.vim'))
  source ~/.vim/filetypes.vim
endif


" -----------------------------------------------------------------------------
" Plugin Settings

if filereadable(expand('~/.vim/settings.vim'))
  source ~/.vim/settings.vim
endif

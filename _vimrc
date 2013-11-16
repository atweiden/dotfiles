" -----------------------------------------------------------------------------
" Vim Settings
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
" General

set nocompatible                " (cp) use Vim defaults
let mapleader=","               " (??) Map leader to comma
set shortmess=aIoO              " (??) Show shortmessages, no intro
set mouse=a                     " (??) Enable mouse support in console
set mousemodel=popup_setpos     " (??) Show popup on right-click
set encoding=utf-8              " (??) Set encoding to UTF-8
set nofsync                     " (??) Let OS decide when to flush disk
nnoremap  ;  :
nnoremap  :  ;
vnoremap  ;  :
vnoremap  :  ;


" -----------------------------------------------------------------------------
" Vundle

if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif


" -----------------------------------------------------------------------------
" Functions

if filereadable(expand("~/.vim/functions.vim"))
  source ~/.vim/functions.vim
endif


" -----------------------------------------------------------------------------
" Basics

syntax on                      " (??) Turn syntax highlighting on
filetype plugin indent on      " (??) Automatically detect file types
set title                      " (??) Show title in console title bar
set backupdir=~/.vim/.backups  " (??) Centralize backups
set directory=~/.vim/.swaps    " (??) Centralize swapfiles
if exists("&undodir")          " (??) Centralize undo history
    set undodir=~/.vim/.undo
endif
" Time out on key codes but not mappings (makes terminal Vim work sanely)
set notimeout
set ttimeout
set ttimeoutlen=10
" Defend against modelines exploit
set modelines=0
" viminfo options: http://vimdoc.sourceforge.net/htmldoc/usr_21.html#21.3
set viminfo='100,<50,s10,h,!
rviminfo


" -----------------------------------------------------------------------------
" Display

" vim {{{

set background=dark
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
  colorscheme neverland2
else
  colorscheme railscasts
endif

" }}}

" gvim {{{

if has("gui_running")
    set guioptions-=m          " (??) Remove gvim menu bar
    set guioptions-=T          " (??) Remove gvim toolbar
    set guioptions-=r          " (??) Remove gvim scrollbar
    set guioptions+=c          " (??) Use console dialogs instead of popup dialogs for simple choices
    set guifont=Monaco\ 16     " (??) Set gvim font to Monaco 16
    set background=light       " (??) Set gvim background to light
endif

" }}}

" cursor {{{

highlight Cursor guifg=black guibg=gray
highlight iCursor guifg=white guibg=white
set guicursor+=n-v-c:blinkon0-block-Cursor
set guicursor+=i:blinkon0-ver25-Cursor/lCursor

" }}}


" -----------------------------------------------------------------------------
" Editing

set noautowrite                " (??) Never write a file unless I request it
set noautowriteall             " (??) NEVER!
set noautoread                 " (??) Don't automatically re-read changed files
set ffs=unix,dos,mac           " (??) Try recognizing dos, unix, and mac line endings
set nostartofline              " (??) avoid moving cursor to BOL when jumping around
set virtualedit=block          " (??) let cursor move past the last char in <C-V> mode
set noerrorbells               " (??) Don't bell or blink
set vb t_vb=                   " (??) Disable all bells
set confirm                    " (??) Show Y-N-C prompt if closing with unsaved changes
set showcmd                    " (??) Show incomplete normal mode commands as you type
set report=0                   " (??) : commands always print changed line count
set cursorline                 " (??) have a line indicate the cursor location
set undofile                   " (??)
set undolevels=500             " (ul) keep a lot of undo levels
set history=500                " (hi) keep 500 lines of command history
set laststatus=2               " (ls) always show the status line
set noshowmatch                " (sm) don't briefly jump to matching bracket when inserting one
set wildmenu                   " (??) menu completion in command mode on <Tab>
set wildmode=list:longest      " (wim) bash-style autocompletion
set hidden                     " (??) when closing tabs, hide the buffer instead of removing it
set splitright                 " (??) split new vertical windows right of current window.
set splitbelow                 " (??) split new horizontal windows under current window.
set winminheight=0             " (??) allow windows to shrink to status line.
set winminwidth=0              " (??) allow windows to shrink to vertical separator.
set updatecount=20             " (??) update the swap file every 20 characters. I don't like to lose stuff.
set lazyredraw                 " (??) don't redraw screen during macros, faster
set ttyfast                    " (??) improves redrawing for newer computers
set ttymouse=xterm             " (??) for tmux
set backspace=2                " (bs) allow backspacing over autoindent, EOL, and BOL
set scrolloff=8                " (??) keep 8 context lines above and below the cursor
set sidescrolloff=8            " (??) context columns at left and right.
set sidescroll=8               " (??) number of chars to scroll when scrolling sideways.
set linebreak                  " (lbr) wrap long lines at a space instead of in the middle of a word
set autoindent                 " (ai) turn on auto-indenting (great for programers)
set smartindent                " (si) use smart indent if there is no indent file
set tabstop=2                  " (ts) width (in spaces) that a <tab> is displayed as
set shiftwidth=2               " (sw) width (in spaces) used in each step of autoindent (plus << and >>)
set softtabstop=2              " (sts) makes spaces feel like tabs (like deleting)
set expandtab                  " (et) expand tabs to spaces (use :retab to redo entire file)
set shiftround                 " (??) rounds indent to a multiple of shiftwidth
set matchpairs+=<:>            " (??) show matching <> (html mainly) as well
set foldmethod=indent          " (fdm) creates a fold for every level of indentation
set foldlevel=99               " (fdl) don't fold by default. When file is opened, don't close any folds
set wrap                       " (??) stop text from scrolling off the window
set number                     " (nu) show line numbers
set relativenumber             " (??) show relative line numbers (in unison with number for hybrid mode)
set numberwidth=1              " (??)
set textwidth=70               " (tw) number of columns before an automatic line break is inserted
set linespace=1                " (??) add slightly more space between lines
set smarttab                   " (sta) 'shiftwidth' used in front of a line, but 'tabstop' used otherwise
set nowrapscan                 " (ws) prevents search from wrapping to top of document when the bottom has been hit
set incsearch                  " (is) highlights what you are searching for as you type
set hlsearch                   " (hls) highlights all instances of the last searched string
set ignorecase                 " (ic) ignores case in search patterns
set smartcase                  " (scs) don't ignore case when the search pattern has uppercase
set infercase                  " (inf) during keyword completion, fix case of new word (when ignore case is on)
set formatoptions=             " (fo) influences how vim automatically formats text
set formatoptions+=c           "      +format comments
set formatoptions+=r           "      +continue comments by default
set formatoptions+=o           "      +make comment when using o or O from comment line
set formatoptions+=q           "      +format comments with gq
set formatoptions+=n           "      +recognize numbered lists
set formatoptions+=2           "      +use indent from 2nd line of a paragraph
set formatoptions+=l           "      +don't break lines that are already long
set formatoptions+=1           "      +break before 1-letter words
nnoremap <silent> n   n:call HLNext(0.4)<cr>
nnoremap <silent> N   N:call HLNext(0.4)<cr>
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)


" -----------------------------------------------------------------------------
" Shortcuts

" Editing
" --- selecting {{{

" select all
map <C-A> ggVG
" escape
inoremap jw <Esc>

" }}}
" --- pasting {{{

" copy to clipboard
map <leader>y "+yy
" paste from clipboard
map <leader>p "+p     
" toggle paste mode
set pastetoggle=<F2>

" }}}
" --- writing {{{

" sudo to write
cnoremap w!! w !sudo tee % >/dev/null
" highlight whitespace
nnoremap <leader>w :/\s\+$<CR>
" remove whitespace
nnoremap <leader>W :%s/\s\+$//e<CR><silent>:noh<CR>
" strip whitespace
map <leader>rmw :call StripWhitespace ()<CR>
" fix windoooos ^M
noremap <Leader>rmm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" }}}
" --- redoing {{{

" maintain location in document while redoing
nmap . .`[

" }}}

" Lines
" --- toggle {{{

" toggle line wrap
map <silent> <F3> :set nowrap!<CR>
imap <silent> <F3> <C-O>:set nowrap!<CR>
" toggle line numbers
map <silent> <F4> :set nonu!<CR>
imap <silent> <F4> <C-O>:set nonu!<CR>
" toggle line endings
map <silent> <F5> :set nolist!<CR>
imap <silent> <F5> <C-O>:set nolist!<CR> 
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
nmap <silent> <leader><leader>c /^\(<\\|=\\|>\)\{7\}\([^=].\+\)\?$<CR>

" }}}

" Navigation
" --- buffers {{{

" create new empty buffer
nmap <C-N> :enew<CR>
" cycle between buffers
map <silent> <C-tab> :buffer #<CR>

" }}}
" ---windows {{{

" map alt-[h,j,k,l,=] to resizing a window split
map <silent> <A-h> <C-W><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-W>>
map <silent> <A-=> <C-W>=
" map alt-[s,v] to horizontal and vertical split respectively
map <silent> <A-s> :split<CR>
map <silent> <A-v> :vsplit<CR>
" map alt-[n,p] to moving to next and previous window respectively
map <silent> <A-n> <C-W><C-W>
map <silent> <A-p> <C-W><S-W>
" simultaneously scroll split windows
nmap <leader>sb :call SplitScroll()<CR>

" }}}


" -----------------------------------------------------------------------------
" Filetype Settings

" languages {{{

au BufRead,BufNewFile,BufWrite {*.ejs} set ft=html
au BufRead,BufNewFile,BufWrite {*.markdown,*.md,*.mdk} set ft=markdown
au BufRead,BufNewFile,BufWrite {*.textile} set ft=textile
au BufRead,BufNewFile,BufWrite {*.pl,*.pm,*.t} set ft=perl sw=4 ts=4
au BufRead,BufNewFile,BufWrite {*.json} set ft=javascript
au BufRead,BufNewFile,BufWrite {*.coffee} set ft=coffee
au BufRead,BufNewFile,BufWrite {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby
au BufRead,BufNewFile,BufWrite {Tupfile,*.tup} setf tup

" }}}

" omnicompletion {{{

autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

" }}}

" dictionaries {{{

au FileType javascript set dictionary+=$HOME/.vim/dict/javascript.dict 
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict 

" }}}

" spelling {{{

let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
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

source ~/.vim/settings.vim

" ==========================================================
" _vimrc
" ==========================================================
"
" Sections:
"    -> Important Settings
"    -> Vundle (Required) Settings
"    -> Basic Settings
"    -> Keyboard Shortcuts
"    -> Plugin Settings
"    -> Plugins Included
"    -> Credits
"
" ==========================================================
" \\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\
" ==========================================================


" ==========================================================
" Important Settings
" ==========================================================
set nocompatible                " (cp) use Vim defaults
let mapleader=","               " (??) Map leader to comma
set shortmess=aIoO              " (??) Show shortmessages, no intro
set mouse=a                     " (??) Enable mouse support in console
set mousemodel=popup_setpos     " (??) Show popup on right-click
set encoding=utf-8              " (??) Set encoding to UTF-8
set nofsync                     " (??) Let OS decide when to flush disk
set grepprg=ack                 " (??) Replace the default grep program with ack. Ack is betterthangrep.com


" ==========================================================
" Vundle Settings (Required)
" ==========================================================
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'


" ==========================================================
" Basic Settings
" ==========================================================
syntax on                      " (??) Turn syntax highlighting on
filetype plugin indent on      " (??) Automatically detect file types
set title                      " (??) Show title in console title bar
set backupdir=~/.vim/.backups  " (??) Centralize backups
set directory=~/.vim/.swaps    " (??) Centralize swapfiles
if exists("&undodir")          " (??) Centralize undo history
    set undodir=~/.vim/.undo
endif

" Display
set background=dark
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
  colorscheme neverland-vim-theme/colors/neverland2
else
  colorscheme railscasts
endif

" Gvim Display
if has("gui_running")
    set guioptions-=m          " (??) Remove gvim menu bar
    set guioptions-=T          " (??) Remove gvim toolbar
    set guioptions-=r          " (??) Remove gvim scrollbar
    set guioptions+=c          " (??) Use console dialogs instead of popup dialogs for simple choices
    set guifont=Monaco\ 16     " (??) Set gvim font to Monaco 16
    set background=light       " (??) Set gvim background to light
endif

" Cursor
highlight Cursor guifg=black guibg=gray
highlight iCursor guifg=white guibg=white
set guicursor+=n-v-c:blinkon0-block-Cursor
set guicursor+=i:blinkon0-ver25-Cursor/lCursor


" Moving Around/Editing
set nostartofline              " (??) avoid moving cursor to BOL when jumping around
set virtualedit=block          " (??) let cursor move past the last char in <C-v> mode
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

" Line Settings
set wrap                       " (??) stop text from scrolling off the window
set number                     " (nu) show line numbers
set numberwidth=1              " (??)
set textwidth=70               " (tw) number of columns before an automatic line break is inserted
set linespace=1                " (??) add slightly more space between lines
set formatoptions=             " (fo) influences how vim automatically formats text
set formatoptions+=c           "      +format comments
set formatoptions+=r           "      +continue comments by default
set formatoptions+=o           "      +make comment when using o or O from comment line
set formatoptions+=q           "      +format comments with gq
set formatoptions+=n           "      +recognize numbered lists
set formatoptions+=2           "      +use indent from 2nd line of a paragraph
set formatoptions+=l           "      +don't break lines that are already long
set formatoptions+=1           "      +break before 1-letter words

" Reading/Writing
set noautowrite                " (??) Never write a file unless I request it
set noautowriteall             " (??) NEVER!
set noautoread                 " (??) Don't automatically re-read changed files
set ffs=unix,dos,mac           " (??) Try recognizing dos, unix, and mac line endings

" Messages, Info, Status
set noerrorbells               " (??) Don't bell or blink
set vb t_vb=                   " (??) Disable all bells
set confirm                    " (??) Show Y-N-C prompt if closing with unsaved changes
set showcmd                    " (??) Show incomplete normal mode commands as you type
set report=0                   " (??) : commands always print changed line count

" Searching and Patterns
set smarttab                   " (sta) 'shiftwidth' used in front of a line, but 'tabstop' used otherwise
set nowrapscan                 " (ws) prevents search from wrapping to top of document when the bottom has been hit
set incsearch                  " (is) highlights what you are searching for as you type
set hlsearch                   " (hls) highlights all instances of the last searched string
set ignorecase                 " (ic) ignores case in search patterns
set smartcase                  " (scs) don't ignore case when the search pattern has uppercase
set infercase                  " (inf) during keyword completion, fix case of new word (when ignore case is on)

" Other Settings
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


" ==========================================================
" Shortcuts
" ==========================================================

" ~~~~~~~~~~~
" * ~~~~~~~ *
" * Editing *
" * ~~~~~~~ *
" ~~~~~~~~~~~
" @Selecting
" select all
map <c-a> ggVG
" @Pasting
" ~~~~~~~~~~~
" copy to clipboard
map <leader>y "+yy
" paste from clipboard
map <leader>p "+p     
" toggle paste mode. Use in insert mode to prevent cascading indents during large paste operations.
set pastetoggle=<F2>
" Redo command but leave cursor on current position
nmap . .`[
" ~~~~~~~~~~~
" @Lines
" ~~~~~~~~~~~
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
" map j to gj and k to gk, so line navigation ignores line wrap
"map j gj
"map k gk
" map jw to ESC
inoremap jw <Esc>
" scroll the viewport faster (auto scroll by 2 line)
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
" Control+Up/Down move lines & selections up and down. (Based on http://vim.wikia.com/wiki/VimTip646)
" Define maps for Normal and Visual modes, then re-use them for Insert and Select modes.
nnoremap <silent> <C-Up> :move -2<CR>
nnoremap <silent> <C-Down> :move +<CR>
xnoremap <silent> <C-Up> :move '<-2<CR>gv
xnoremap <silent> <C-Down> :move '>+<CR>gv
imap <silent> <C-Up> <C-O><C-Up>
imap <silent> <C-Down> <C-O><C-Down>
smap <silent> <C-Up> <C-G><C-Up><C-G>
smap <silent> <C-Down> <C-G><C-Down><C-G>
" quick alignment of text
nmap <leader>al :left<CR>
nmap <leader>ar :right<CR>
nmap <leader>ac :center<CR>
" sudo to write
cnoremap w!! w !sudo tee % >/dev/null
" ~~~~~~~~~~~
" @Writing
" ~~~~~~~~~~~
" " Toggle TaskList To-Do's
map <leader>td <Plug>TaskList
" " Highlight whitespace with <leader>w, and remove with <leader>W
nnoremap <leader>w :/\s\+$<CR>
nnoremap <leader>W :%s/\s\+$//e<CR><silent>:noh<CR>
" ~~~~~~~~~~~
" @Programming
" ~~~~~~~~~~~
" " toggle Tagbar:
nmap <F6> :TagbarToggle<CR>
" " CoffeeScript
"vmap <leader>cc <esc>:'<,'>:CoffeeCompile<CR>
"map <leader>cc :CoffeeCompile<CR>
" command -nargs=1 C CoffeeCompile | :<args>
" And then try typing :C<number>. Whoah! This takes you to the given line 
" number in the compiled Javascript of the CoffeeScript file you are editing. 
" source: http://esa-matti.suuronen.org/blog/2011/11/28/how-to-write-coffeescript-efficiently/
" map <silent> <leader>cm :CoffeeMake<cr> <cr>
" " VimClojure rainbow parenthesis
"nnoremap <leader>rp :RainbowParenthesesToggle<CR>
" " Remove whitespace
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map <leader>rmw :call StripWhitespace ()<CR>
" " Remove the Windows ^M - for when encodings get messy
noremap <Leader>rmm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
" " Toggle NeoComplCache
function! s:toggle_neocomplcache() "{{{
    if !exists(':NeoComplCacheDisable')
        NeoComplCacheEnable
        echo 'neocomplcache enabled.'
    else
        NeoComplCacheDisable
        echo 'neocomplcache disabled.'
    endif
endfunction "}}}
nnoremap <Leader>neo :<C-u>call <SID>toggle_neocomplcache()<CR>
" ~~~~~~~~~~~
" @Merging
" ~~~~~~~~~~~
" " highlight conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
" " shortcut to jump to next conflict marker
nmap <silent> <leader><leader>c /^\(<\\|=\\|>\)\{7\}\([^=].\+\)\?$<CR>

" ~ " ~ 

" ~~~~~~~~~~~~~~
" * ~~~~~~~~~~ *
" * Navigation *
" * ~~~~~~~~~~ *
" ~~~~~~~~~~~~~~
" @Files/Folders
" ~~~~~~~~~~~~~~
" " open MRU list:
map <leader>m :MRU<CR>
" " open NERDTree:
map <leader>n :NERDTreeToggle<CR>
" " run Ack search:
nnoremap <leader>a :Ack<Space>
" " run CompView search:
" map <leader><leader>s <Plug>CompView
" " map Lusty for Node:
map <leader>ff :LustyFilesystemExplorerFromHere<CR>
map <leader>fm :LustyFilesystemExplorer models<CR>
map <leader>fv :LustyFilesystemExplorer views<CR>
map <leader>fc :LustyFilesystemExplorer controllers<CR>
map <leader>fr :LustyFilesystemExplorer routes<CR>
map <leader>fh :LustyFilesystemExplorer helpers<CR>
map <leader>fp :LustyFilesystemExplorer public<CR>
map <leader>fl :LustyFilesystemExplorer lib<CR>
map <leader>ft :LustyFilesystemExplorer test<CR>
" ~~~~~~~~~~~~~~
" @Buffers
" ~~~~~~~~~~~~~~
" " toggle Gundo:
map <leader>g :GundoToggle<CR>
" " toggle YankRing
nmap <leader>r :YRShow<CR>
" " create new empty buffer:
nmap <C-N> :enew<CR>
" " cycle between buffers:
map <silent> <C-tab> :buffer #<CR>
" ~~~~~~~~~~~~~~
" @Windows
" ~~~~~~~~~~~~~~
" " ctrl-jklm changes to that split:
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
" " make these all work in insert mode too ( <C-O> makes next cmd happen as if in command mode ):
imap <C-W> <C-O><C-W>
" " faster split resizing (+,-)
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif
" " simultaneously scroll split windows:
fu! SplitScroll()
    :wincmd v
    :wincmd w
    execute "normal! \<C-d>"
    :set scrollbind
    :wincmd w
    :set scrollbind
endfu
nmap <leader>sb :call SplitScroll()<CR>

" ~ " ~ 

" Filetype settings
" Languages
au BufRead,BufNewFile,BufWrite {*.ejs} set ft=html
au BufRead,BufNewFile,BufWrite {*.markdown,*.md,*.mdk} set ft=markdown
au BufRead,BufNewFile,BufWrite {*.textile} set ft=textile
au BufRead,BufNewFile,BufWrite {*.pl,*.pm,*.t} set ft=perl sw=4 ts=4
au BufRead,BufNewFile,BufWrite {*.json} set ft=javascript
au BufRead,BufNewFile,BufWrite {*.coffee} set ft=coffee
au BufRead,BufNewFile,BufWrite {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby

" Omnicompletion
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

" Dictionaries
au FileType javascript set dictionary+=$HOME/.vim/dict/javascript.dict 
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict 

" Autocompletion
" Customize autocomplete menu color:
highlight Pmenu ctermbg=238 gui=bold

" ConqueTerm
function! s:Terminal(...)
  if a:0 > 0
    let l:cmd = a:1
  else
    let l:cmd = 'bash --login'
  endif
  execute 'ConqueTermSplit ' . l:cmd
endfunction
command! -nargs=? Terminal call s:Terminal(<f-args>)
au FileType conque_term highlight ExtraWhitespace guibg=NONE ctermbg=NONE
au FileType conque_term set nospell

" Spelling
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" Use English for spellchecking, but don't spellcheck by default:
if version >= 700
set spl=en spell
set nospell
endif

" Time out on key codes but not mappings (makes terminal Vim work sanely):
set notimeout
set ttimeout
set ttimeoutlen=10

" Defend against modelines exploit:
set modelines=0

" Turn 'list' off by default, since it interferes with 'linebreak' and
" 'breakat' formatting, but define characters to use when it's turned on:
set nolist
set listchars =tab:>-           " Start and body of tabs
set listchars+=trail:.          " Trailing spaces
set listchars+=extends:>        " Last column when line extends off right
set listchars+=precedes:<       " First column when line extends off left
set listchars+=eol:$            " End of line

" Restore cursor position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Vim on the iPad
if &term == "xterm-ipad"
    nnoremap <Tab> <Esc>
    vnoremap <Tab> <Esc>gV
    onoremap <Tab> <Esc>
    inoremap <Tab> <Esc>`^
    inoremap <Leader><Tab> <Tab>
endif


" ==========================================================
" Plugin Settings
" ==========================================================

" NERDTree
let NERDTreeChDirMode=1              " Open NERDTree in working directory
let NERDTreeShowFiles=1              " Show files by default
let NERDTreeShowHidden=1             " Show hidden files by default
let NERDTreeQuitOnOpen=1             " Close NERDTree upon selecting file to open
let NERDTreeHighlightCursorline=1    " Highlight the selected entry in the tree
let NERDTreeMouseMode=2              " Use a single click to fold/unfold directories and a double click to open files

" NERDCommenter
let g:NERDCustomDelimiters = { 'dustjs': { 'left': '{!', 'right': '!}' } }

" UltiSnips
let g:UltiSnipsSnippetsDir = '$HOME/.vim/ultisnips'

" Ack
let g:ackhighlight=1
let g:ackprg="ack -H --type-set jade=.jade --type-set stylus=.styl --type-set coffee=.coffee --nocolor --nogroup --column --ignore-dir=node_modules -G '^((?!min\.).)*$'"

" YankRing
let g:yankring_history_dir = '$HOME/.vim/.tmp'

" NrrwRegion
let g:nrrw_rgn_vert = 1
let g:nrrw_rgn_nohl = 1

" Tagbar
"let g:tagbar_type_javascript = {
    "\ 'ctagsbin' : '/usr/lib/jsctags'
"\ }

" Easytags
set tags=./tags;
let g:easytags_dynamic_files = 2
let g:easytags_on_cursorhold = 0
let g:easytags_updatetime_autodisable = 1
let g:easytags_updatetime_min = 4000
let g:easytags_auto_update = 0
let g:easytags_auto_highlight = 0
let g:easytags_resolve_links = 1

" NeoComplCache
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_plugin_completion_length = {
  \ 'buffer_complete'   : 2,
  \ 'include_complete'  : 2,
  \ 'syntax_complete'   : 2,
  \ 'filename_complete' : 2,
  \ 'keyword_complete'  : 2,
  \ 'omni_complete'     : 1
  \ }
let g:neocomplcache_min_keyword_length = 3
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default'    : '',
  \ 'erlang'     : $HOME . '/.vim/dict/erlang.dict',
  \ 'objc'       : $HOME . '/.vim/dict/objc.dict',
  \ 'javascript' : $HOME . '/.vim/dict/javascript.dict',
  \ 'mxml'       : $HOME . '/.vim/dict/mxml.dict',
  \ 'ruby'       : $HOME . '/.vim/dict/ruby.dict',
  \ 'perl'       : $HOME . '/.vim/dict/perl.dict',
  \ 'scheme'     : $HOME . '/.vim/dict/gauche.dict',
  \ 'scala'      : $HOME . '/.vim/dict/scala.dict',
  \ 'int-erl'    : $HOME . '/.vim/dict/erlang.dict',
  \ 'int-irb'    : $HOME . '/.vim/dict/ruby.dict',
  \ 'int-perlsh' : $HOME . '/.vim/dict/perl.dict'
  \ }
let g:neocomplcache_same_filetype_lists = {
  \ 'c'          : 'ref-man,ref-erlang',
  \ 'perl'       : 'ref-perldoc',
  \ 'ruby'       : 'ref-refe',
  \ 'erlang'     : 'ref-erlang',
  \ 'objc'       : 'c',
  \ 'tt2html'    : 'html,perl',
  \ 'int-erl'    : 'erlang,ref-erlang',
  \ 'int-perlsh' : 'perl,ref-perldoc',
  \ 'int-irb'    : 'ruby,ref-refe'
  \ }
let g:neocomplcache_snippets_dir = $HOME . '/.vim/snippets'

" CompView
let MRU_Max_Entries = 400

" mojo.vim
let mojo_highlight_data = 1

" vim-gitgutter
let g:gitgutter_enabled = 0

" vim-coffee-script
let coffee_compile_vert = 1

" VimClojure
"let g:vimclojure#ParenRainbow = 1 " Enable rainbow parens
"let g:vimclojure#DynamicHighlighting = 1 " Enable dynamic highlighting
"let g:vimclojure#FuzzyIndent = 1 " Names beginning in 'def' or 'with' to be indented as if they were included in the 'lispwords' option


" ==========================================================
" Plugins Included
" ==========================================================
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/awk-support.vim'
Bundle 'vim-scripts/bash-support.vim'
" Bundle 'vim-scripts/buftabs'
" Bundle 'vim-scripts/CCTree'
" Bundle 'briandoll/change-inside-surroundings.vim'
" Bundle 'tomtom/checksyntax_vim'
" Bundle 'sjl/clam.vim'
" Bundle 'Rip-Rip/clang_complete'
Bundle 'lukaszkorecki/CoffeeTags'
" Bundle 'Rykka/ColorV'
" Bundle 'vim-scripts/commentop.vim'
" Bundle 'vim-scripts/compview'
" Bundle 'smancill/conky-syntax.vim'
" Bundle 'vim-scripts/Conque-Shell'
Bundle 'FredKSchott/CoVim'
Bundle 'c9s/cpan.vim'
Bundle 'vim-scripts/CSApprox'
Bundle 'vim-scripts/csv.vim'
" Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/c.vim'
" Bundle 'vim-scripts/dbext.vim'
" Bundle 'Raimondi/delimitMate'
" Bundle 'vim-scripts/diff-fold.vim'
" Bundle 'vim-scripts/doxygen-support.vim'
Bundle 'vim-scripts/DrawIt'
" Bundle 'jimmyhchan/dustjs.vim'
" Bundle 'Rykka/easydigraph.vim'
" Bundle 'vim-scripts/Engspchk'
" Bundle 'othree/eregex.vim'
" Bundle 'vim-scripts/errormarker.vim'
" Bundle 'vim-scripts/foldcol.vim'
" Bundle 'mattn/gist-vim'
" Bundle 'paulbaumgart/git-situational-awareness'
" Bundle 'hjdivad/git-topic'
" Bundle 'vim-scripts/gitdiff.vim'
" Bundle 'gregsexton/gitv'
Bundle 'vim-scripts/gnupg.vim'
Bundle 'sjl/gundo.vim'
" Bundle 'matthias-guenther/hammer.vim'
Bundle 'vim-scripts/iptables'
" Bundle 'alfredodeza/jacinto.vim'
" Bundle 'joestelmach/javaScriptLint.vim'
Bundle 'vim-scripts/LargeFile'
" Bundle 'AndrewRadev/linediff.vim'
Bundle 'vim-scripts/lua-support'
Bundle 'sjbach/lusty'
Bundle 'vim-scripts/matchit.zip'
Bundle 'yko/mojo.vim'
Bundle 'vim-scripts/mru.vim'
" Bundle 'juvenn/mustache.vim'
" Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
" Bundle 'tejr/nextag'
Bundle 'vim-scripts/nginx.vim'
Bundle 'chrisbra/NrrwRgn'
Bundle 'vim-scripts/openssl.vim'
Bundle 'vim-scripts/perl-support.vim'
" Bundle 'c9s/perlomni.vim'
" Bundle 'vim-scripts/project.tar.gz'
Bundle 'klen/python-mode'
Bundle 'saltstack/salt-vim'
" Bundle 'vim-scripts/searchfold.vim'
" Bundle 'xenoterracide/sql_iabbr'
" Bundle 'ervandew/supertab'
" Bundle 'vim-scripts/svndiff.vim'
" Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
" Bundle 'vim-scripts/taglist.vim'
" Bundle 'vim-scripts/TaskList.vim'
" Bundle 'timcharper/textile.vim'
" Bundle 'tomtom/tlib_vim'
" Bundle 'kikijump/tslime.vim'
Bundle 'vim-scripts/UltiSnips'
" Bundle 'Shougo/unite.vim'
" Bundle 'sgur/unite-qf'
" Bundle 'tejr/vawk'
" Bundle 'gregsexton/VimCalc'
" Bundle 'vim-scripts/VimClojure'
Bundle 'ajford/vimkivy'
" Bundle 'mihaifm/vimpanel'
" Bundle 'Shougo/vimproc'
" Bundle 'Shougo/vimshell'
" Bundle 'vimoutliner/vimoutliner'
Bundle 'epegzz/vimux'
" Bundle 'tpope/vim-abolish'
" Bundle 'wnodom/vim-accentuate'
Bundle 'trapd00r/vim-after-syntax-perl'
Bundle 'trapd00r/vim-after-syntax-vim'
" Bundle 'Townk/vim-autoclose'
" Bundle 'thisivan/vim-bufexplorer'
Bundle 'kchmck/vim-coffee-script'
" Bundle 'skammer/vim-css-color'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'xolox/vim-easytags'
" Bundle 'tpope/vim-endwise'
" Bundle 'int3/vim-extradite'
" Bundle 'jmcantrell/vim-fatrat'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'airblade/vim-gitgutter'
" Bundle 'jnwhiteh/vim-golang'
" Bundle 'tpope/vim-haml'
" Bundle 'serby/vim-historic'
" Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'digitaltoad/vim-jade'
Bundle 'pangloss/vim-javascript'
Bundle 'itspriddle/vim-jquery'
Bundle 'leshill/vim-json'
" Bundle 'tpope/vim-liquid'
Bundle 'xolox/vim-lua-ftplugin'
Bundle 'xolox/vim-lua-inspect'
Bundle 'tpope/vim-markdown'
Bundle 'uguu-org/vim-matrix-screensaver'
" Bundle 'guileen/vim-node'
Bundle 'felixge/vim-nodejs-errorformat'
" Bundle 'mrkschan/vim-node-jslint'
Bundle 'mmalecki/vim-node.js'
Bundle 'vim-perl/vim-perl'
Bundle 'Lokaltog/vim-powerline'
" Bundle 'thinca/vim-quickrun'
" Bundle 'xolox/vim-reload'
Bundle 'tpope/vim-repeat'
" Bundle 'airblade/vim-rooter'
" Bundle 'vim-ruby/vim-ruby'
" Bundle 'henrik/vim-ruby-runner'
" Bundle 'ironcamel/vim-script-runner'
" Bundle 'goldfeld/vim-seek'
" Bundle 'xolox/vim-session'
" Bundle 'bbommarito/vim-slim'
" Bundle 'jpalardy/vim-slime'
" Bundle 'garbas/vim-snipmate'
  " Bundle 'MarcWeber/vim-addon-mw-utils'
  " Bundle 'tomtom/tlib_vim'
  " Bundle 'snipmate-snippets'
Bundle 'wavded/vim-stylus'
" Bundle 'tpope/vim-surround'
" Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/Vim-Support'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'bronson/vim-visual-star-search' 
" Bundle 'lukaszb/vim-web-indent'
" Bundle 'vim-scripts/VOoM'
Bundle 'mattn/webapi-vim'
" Bundle 'Qu4Z/wwvim'
Bundle 'vim-scripts/YankRing.vim'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'mattn/zencoding-vim'
Bundle 'vim-scripts/ZoomWin'


" ==========================================================
" Credits
" ==========================================================
" http://apaulodesign.com/vimrc.html
" http://dotfiles.github.com/
" https://github.com/alessioalex/dotfiles/
" https://github.com/cooldaemon/myhome/
" https://github.com/gf3/dotfiles
" https://github.com/gmarik/vimfiles/
" https://github.com/jeroenjanssens/dotfiles/
" https://github.com/Floby/vim-config
" https://github.com/nvie/vimrc/
" https://github.com/sjl/dotfiles/
" https://github.com/smith/vim-config/
" https://github.com/sontek/dotfiles/
" https://github.com/spf13/spf13-vim/
" https://github.com/wavded/dotfiles/
" https://github.com/wnodom/wnodom-vim-environment/

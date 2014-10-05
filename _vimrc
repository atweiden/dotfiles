" -----------------------------------------------------------------------------
" Vim Settings
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
" General

set nocompatible
let mapleader=","
noremap \ ,
nnoremap Q <nop>
set shortmess=aIoO
set mouse=a
set mousemodel=popup_setpos
set encoding=utf-8
set nofsync


" -----------------------------------------------------------------------------
" Plugins

silent! if plug#begin('~/.vim/plugged')
" status
Plug 'itchyny/lightline.vim'

" buffers
Plug 'moll/vim-bbye', { 'on': 'Bdelete' }
Plug 'ton/vim-bufsurf'

" splits
Plug 'mattboehm/vim-accordion', { 'on': 'Accordion' }
Plug 'mattboehm/vim-unstack', { 'on': [ 'UnstackFromClipboard',
                                      \ 'UnstackFromSelection',
                                      \ 'UnstackFromText' ] }

" filesystem
Plug 'dockyard/vim-easydir'
Plug 'jeetsukumaran/vim-filebeagle', { 'on': [ 'FileBeagle',
                                             \ 'FileBeagleBufferDir' ] }
Plug 'bogado/file-line'

" search
Plug 'dyng/ctrlsf.vim', { 'on': [ 'CtrlSF',
                                \ '<Plug>CtrlSFCwordPath',
                                \ '<Plug>CtrlSFPrompt',
                                \ '<Plug>CtrlSFPwordPath',
                                \ '<Plug>CtrlSFVwordExec',
                                \ '<Plug>CtrlSFVwordPath' ] }
Plug 'junegunn/fzf', { 'on': 'FZF' }
Plug 'haya14busa/incsearch.vim', { 'on': [ '<Plug>(incsearch-backward)',
                                         \ '<Plug>(incsearch-forward)',
                                         \ '<Plug>(incsearch-stay)' ] }
Plug 'dahu/SearchParty', { 'on': [ 'P',
                                 \ 'RSearch',
                                 \ '<Plug>MashFOWDisable',
                                 \ '<Plug>MashFOWEnable',
                                 \ '<Plug>SearchPartyDeleteMatch',
                                 \ '<Plug>SearchPartyFindLiteral',
                                 \ '<Plug>SearchPartyFindLiteralBkwd',
                                 \ '<Plug>SearchPartyFindLiteralFwd',
                                 \ '<Plug>SearchPartyHighlightClear',
                                 \ '<Plug>SearchPartyHighlightToggle',
                                 \ '<Plug>SearchPartyHighlightWord',
                                 \ '<Plug>SearchPartyHighlightWORD',
                                 \ '<Plug>SearchPartyMashFOWToggle',
                                 \ '<Plug>SearchPartyMashShadow',
                                 \ '<Plug>SearchPartyMultipleReplace',
                                 \ '<Plug>SearchPartySearchHighlightReplace',
                                 \ '<Plug>SearchPartySetMatch',
                                 \ '<Plug>SearchPartySetSearch',
                                 \ '<Plug>SearchPartyToggleAutoHighlightWord',
                                 \ '<Plug>SearchPartyVisualFindNext',
                                 \ '<Plug>SearchPartyVisualFindPrev',
                                 \ '<Plug>SearchPartyVisualFindPrior',
                                 \ '<Plug>SearchPartyVisualFindSubstitute',
                                 \ '<Plug>SearchPartyVisualSubstitute' ] }

" movement
Plug 'rhysd/clever-f.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'bruno-/vim-vertical-move'

" repeat
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/visualrepeat'

" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" sessions
Plug 'tpope/vim-projectionist'

" align
Plug 'JLimperg/Align'
Plug 'vim-scripts/vis'
Plug 'atweiden/vim-dragvisuals'

" textobj
Plug 'tommcdo/vim-centaur'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-submode'
Plug 'wellle/targets.vim'
Plug 'reedes/vim-textobj-quote'
Plug 'reedes/vim-textobj-sentence'
Plug 'kana/vim-textobj-user'

" bookmarks
Plug 'tommcdo/vim-kangaroo'
Plug 'jeetsukumaran/vim-markology', { 'on': [ '<Plug>MarkologyClearAll',
                                            \ '<Plug>MarkologyClearMark',
                                            \ '<Plug>MarkologyDisable',
                                            \ '<Plug>MarkologyEnable',
                                            \ '<Plug>MarkologyLocationList',
                                            \ '<Plug>MarkologyNextLocalMarkByAlpha',
                                            \ '<Plug>MarkologyNextLocalMarkPos',
                                            \ '<Plug>MarkologyPlaceMark',
                                            \ '<Plug>MarkologyPlaceMarkToggle',
                                            \ '<Plug>MarkologyPrevLocalMarkByAlpha',
                                            \ '<Plug>MarkologyPrevLocalMarkPos',
                                            \ '<Plug>MarkologyQuickFix',
                                            \ '<Plug>MarkologyToggle' ] }

" macros
Plug 'dahu/VimLocalMacros'
Plug 'vim-scripts/marvim'
Plug 'naquad/Partial.vim', { 'on': 'Partial' }

" auto-close
Plug 'jiangmiao/auto-pairs'

" vcs
Plug 'rhysd/committia.vim'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'jmcantrell/vim-reporoot', { 'on': 'RepoRoot' }

" writing
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'reedes/vim-lexical', { 'for': [ 'markdown', 'textile' ] }
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
Plug 'reedes/vim-litecorrect', { 'for': [ 'markdown', 'textile' ] }
Plug 'reedes/vim-wordy', { 'on': [ 'NextWordy',
                                 \ 'NoWordy',
                                 \ 'PrevWordy',
                                 \ 'Wordy' ] }

" crypto
Plug 'vim-scripts/openssl.vim'

" async
Plug 'tpope/vim-dispatch', { 'on': [ 'Copen',
                                   \ 'Dispatch',
                                   \ 'Focus',
                                   \ 'FocusDispatch',
                                   \ 'Make',
                                   \ 'Start' ] }
Plug 'jpalardy/vim-slime', { 'on': [ 'SlimeConfig',
                                   \ 'SlimeSend',
                                   \ 'SlimeSend1',
                                   \ '<Plug>SlimeConfig',
                                   \ '<Plug>SlimeLineSend',
                                   \ '<Plug>SlimeMotionSend',
                                   \ '<Plug>SlimeParagraphSend',
                                   \ '<Plug>SlimeRegionSend' ] }
Plug 'benmills/vimux', { 'on': [ 'VimuxClearRunnerHistory',
                               \ 'VimuxCloseRunner',
                               \ 'VimuxInspectRunner',
                               \ 'VimuxInterruptRunner',
                               \ 'VimuxOpenPane',
                               \ 'VimuxPromptCommand',
                               \ 'VimuxRunCommand',
                               \ 'VimuxRunLastCommand',
                               \ 'VimuxSendKeys',
                               \ 'VimuxSendText',
                               \ 'VimuxZoomRunner' ] }
Plug 'xolox/vim-misc'
Plug 'Shougo/vimproc.vim'
Plug 'xuhdev/SingleCompile', { 'on': [ 'SCChooseCompiler',
                                     \ 'SCChooseInterpreter',
                                     \ 'SCCompile',
                                     \ 'SCCompileAF',
                                     \ 'SCCompileRun',
                                     \ 'SCCompileRunAF',
                                     \ 'SCCompileRunAsync',
                                     \ 'SCCompileRunAsyncAF',
                                     \ 'SCIsRunningAsync',
                                     \ 'SCTerminateAsync',
                                     \ 'SCViewResult',
                                     \ 'SCViewResultAsync',
                                     \ 'SingleCompile',
                                     \ 'SingleCompileRun' ] }
Plug 'Shougo/unite.vim', { 'on': [ 'Unite',
                                 \ 'UniteBookmarkAdd',
                                 \ 'UniteClose',
                                 \ 'UniteFirst',
                                 \ 'UniteLast',
                                 \ 'UniteNext',
                                 \ 'UnitePrevious',
                                 \ 'UniteResume',
                                 \ 'UniteWithBufferDir',
                                 \ 'UniteWithCurrentDir',
                                 \ 'UniteWithCursorWord',
                                 \ 'UniteWithInput',
                                 \ 'UniteWithInputDirectory',
                                 \ 'UniteWithProjectDir',
                                 \ '<Plug>(unite_all_exit)',
                                 \ '<Plug>(unite_append_end)',
                                 \ '<Plug>(unite_append_enter)',
                                 \ '<Plug>(unite_choose_action)',
                                 \ '<Plug>(unite_complete)',
                                 \ '<Plug>(unite_cursor_bottom)',
                                 \ '<Plug>(unite_cursor_top)',
                                 \ '<Plug>(unite_delete_backward_char)',
                                 \ '<Plug>(unite_delete_backward_line)',
                                 \ '<Plug>(unite_delete_backward_path)',
                                 \ '<Plug>(unite_delete_backward_word)',
                                 \ '<Plug>(unite_disable_max_candidates)',
                                 \ '<Plug>(unite_disable_max_candidates)',
                                 \ '<Plug>(unite_do_default_action)',
                                 \ '<Plug>(unite_exit)',
                                 \ '<Plug>(unite_input_directory)',
                                 \ '<Plug>(unite_input_directory)',
                                 \ '<Plug>(unite_insert_enter)',
                                 \ '<Plug>(unite_insert_head)',
                                 \ '<Plug>(unite_insert_leave)',
                                 \ '<Plug>(unite_loop_cursor_down)',
                                 \ '<Plug>(unite_loop_cursor_up)',
                                 \ '<Plug>(unite_move_head)',
                                 \ '<Plug>(unite_narrowing_dot)',
                                 \ '<Plug>(unite_narrowing_input_history)',
                                 \ '<Plug>(unite_narrowing_path)',
                                 \ '<Plug>(unite_new_candidate)',
                                 \ '<Plug>(unite_print_candidate)',
                                 \ '<Plug>(unite_print_message_log)',
                                 \ '<Plug>(unite_quick_help)',
                                 \ '<Plug>(unite_quick_match_choose_action)',
                                 \ '<Plug>(unite_quick_match_default_action)',
                                 \ '<Plug>(unite_redraw)',
                                 \ '<Plug>(unite_redraw)',
                                 \ '<Plug>(unite_restart)',
                                 \ '<Plug>(unite_rotate_next_source)',
                                 \ '<Plug>(unite_rotate_previous_source)',
                                 \ '<Plug>(unite_select_next_line)',
                                 \ '<Plug>(unite_select_next_page)',
                                 \ '<Plug>(unite_select_previous_line)',
                                 \ '<Plug>(unite_select_previous_page)',
                                 \ '<Plug>(unite_skip_cursor_down)',
                                 \ '<Plug>(unite_skip_cursor_up)',
                                 \ '<Plug>(unite_skip_next_line)',
                                 \ '<Plug>(unite_skip_previous_line)',
                                 \ '<Plug>(unite_toggle_auto_preview)',
                                 \ '<Plug>(unite_toggle_mark_all_candidates)',
                                 \ '<Plug>(unite_toggle_mark_current_candidate)',
                                 \ '<Plug>(unite_toggle_mark_current_candidate_up)',
                                 \ '<Plug>(unite_toggle_mark_selected_candidates)',
                                 \ '<Plug>(unite_toggle_selected_candidates)',
                                 \ '<Plug>(unite_toggle_transpose_window)' ] }

" languages
Plug 'trapd00r/vim-after-syntax-perl', { 'for': 'perl' }
Plug 'trapd00r/vim-after-syntax-vim', { 'for': 'vim' }
Plug 'alisdair/vim-armasm', { 'for': 'armasm' }
Plug 'vim-scripts/awk-support.vim', { 'for': 'awk' }
Plug 'vim-jp/cpp-vim', { 'for': [ 'c', 'cpp' ] }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'c', 'cpp' ] }
Plug 'b4winckler/vim-objc', { 'for': 'objc' }
Plug 'tpope/vim-classpath', { 'for': [ 'clojure', 'java' ] }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'vim-scripts/vim-clojure-sql', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'vim-scripts/csv.vim', { 'for': 'csv' }
Plug 'tshirtman/vim-cython', { 'for': 'cython' }
Plug 'idanarye/vim-dutyl', { 'for': 'd', 'tag': 'v1.4.0' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'mattreduce/vim-mix', { 'on': [ 'Mclean',
                                   \ 'Mcompile',
                                   \ 'Mdeps',
                                   \ 'Mix',
                                   \ 'Mtest' ] }
Plug 'spiegela/vimix', { 'on': [ 'VimixClean',
                               \ 'VimixCompile',
                               \ 'VimixDepsCompile',
                               \ 'VimixDepsGet',
                               \ 'VimixDepsStatus',
                               \ 'VimixDepsUpdate',
                               \ 'VimixLocal',
                               \ 'VimixPromptRun',
                               \ 'VimixTestAll',
                               \ 'VimixTestCurrentFile',
                               \ 'VimuxRunLastCommand' ] }
Plug 'jimenezrick/vimerl', { 'for': 'erlang' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'tpope/vim-haml', { 'for': [ 'haml', 'sass', 'scss' ] }
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'enomsg/vim-haskellConcealPlus', { 'for': 'haskell' }
Plug 'Twinside/vim-haskellFold', { 'for': 'haskell' }
Plug 'travitch/hasksyn', { 'for': 'haskell' }
Plug 'wting/lhaskell.vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'pbrisbin/vim-syntax-shakespeare', { 'for': [ 'cassius',
                                                 \ 'hamlet',
                                                 \ 'julius',
                                                 \ 'lucius' ] }
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'felixge/vim-nodejs-errorformat', { 'for': 'javascript' }
Plug 'unc0/vim-gorilla-script', { 'for': [ 'egs', 'gorilla' ] }
Plug 'unc0/vim-egs', { 'for': 'egs' }
Plug 'ajford/vimkivy', { 'for': 'kivy' }
Plug 'xolox/vim-lua-ftplugin', { 'for': 'lua' }
Plug 'xolox/vim-lua-inspect', { 'for': 'lua' }
Plug 'leafo/moonscript-vim', { 'for': 'moon' }
Plug 'tpope/vim-markdown', { 'for': [ 'markdown', 'mkd' ] }
Plug 'mattly/vim-markdown-enhancements', { 'for': [ 'markdown', 'mkd' ] }
Plug 'nelstrom/vim-markdown-folding', { 'for': [ 'markdown', 'mkd' ] }
Plug 'zah/nimrod.vim', { 'for': [ 'nim', 'nimrod' ] }
Plug 'vim-scripts/pacmanlog.vim', { 'for': 'pacmanlog' }
Plug 'yko/mojo.vim', { 'for': 'html.epl' }
Plug 'm2mdas/phpcomplete-extended', { 'for': 'php' }
Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
Plug '2072/vim-syntax-for-PHP', { 'for': 'php' }
Plug 'mitsuhiko/vim-python-combined', { 'for': 'python' }
Plug 'vim-scripts/paredit.vim', { 'for': [ 'lisp', 'racket', 'scheme' ] }
Plug 'wlangstroth/vim-racket', { 'for': 'racket' }
Plug 'vim-scripts/scribble.vim', { 'for': 'racket' }
Plug 'yaymukund/vim-rabl', { 'for': 'ruby' }
Plug 'tpope/vim-rbenv', { 'on': 'Rbenv' }
Plug 'saltstack/salt-vim', { 'for': 'sls' }
Plug 'vim-scripts/SQLUtilities', { 'on': [ 'SQLUCreateColumnList',
                                         \ 'SQLUCreateProcedure',
                                         \ 'SQLUFormatter',
                                         \ 'SQLUGetColumnDataType',
                                         \ 'SQLUGetColumnDef' ] }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'whatyouhide/vim-tmux-syntax', { 'for': 'tmux-conf' }
Plug 'cespare/vim-toml', { 'for': 'toml' }

" colors
Plug 'vim-scripts/AutumnLeaf'
Plug 'vim-scripts/baycomb'
Plug 'baskerville/bubblegum'
Plug 'vim-scripts/candyman.vim'
Plug 'mattsacks/vim-eddie'
Plug 'endel/vim-github-colorscheme'
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'guns/jellyx.vim'
Plug 'vim-scripts/lettuce.vim'
Plug 'vim-scripts/Liquid-Carbon'
Plug 'jonathanfilip/vim-lucius'
Plug 'vim-scripts/matrix.vim', { 'tag': '1.0' }
Plug 'vim-scripts/mayansmoke'
Plug 'vim-scripts/mimicpak'
Plug 'djjcast/mirodark'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'yuratomo/neon.vim'
Plug 'trapd00r/neverland-vim-theme'
Plug 'vim-scripts/oceanlight'
Plug 'reedes/vim-colors-pencil'
Plug 'vim-scripts/print_bw.zip'
Plug 'junegunn/seoul256.vim'
Plug 'vim-scripts/Sorcerer'
Plug 'vim-scripts/stackoverflow.vim'
Plug 'vim-scripts/summerfruit256.vim'
Plug 'vim-scripts/TaQua'
Plug 'octol/vombatidae-vim'
Plug 'rhysd/wallaby.vim'
Plug 'vim-scripts/zenesque.vim'

" color utilities
Plug 'vim-scripts/CSApprox'
Plug 'mhinz/vim-hugefile'
Plug 'kien/rainbow_parentheses.vim', { 'on': [ 'RainbowParenthesesLoadBraces',
                                             \ 'RainbowParenthesesLoadChevrons',
                                             \ 'RainbowParenthesesLoadRound',
                                             \ 'RainbowParenthesesLoadSquare',
                                             \ 'RainbowParenthesesToggle',
                                             \ 'RainbowParenthesesToggleAll' ] }
Plug 'vim-scripts/SyntaxRange', { 'on': [ 'SyntaxIgnore',
                                        \ 'SyntaxInclude' ] }
Plug 'reedes/vim-thematic', { 'on': [ 'ThematicFirst',
                                    \ 'ThematicNarrow',
                                    \ 'ThematicNext',
                                    \ 'ThematicOriginal',
                                    \ 'ThematicPrevious',
                                    \ 'ThematicRandom',
                                    \ 'ThematicWiden' ] }
Plug 'whatyouhide/vim-lengthmatters'
call plug#end()
endif


" -----------------------------------------------------------------------------
" Functions

if filereadable(expand('~/.vim/functions.vim'))
  source ~/.vim/functions.vim
endif


" -----------------------------------------------------------------------------
" Basics

syntax on
filetype plugin indent on
set title
set backupdir=~/.vim/.backups
set directory=~/.vim/.swaps
set undodir=~/.vim/.undo
set autochdir
set notimeout
set ttimeout
set ttimeoutlen=10
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
endif

" }}}

" gvim {{{

if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions+=c
    set guifont=Monaco\ 16
    set t_Co=256
    let g:jellyx_show_whitespace = 1
    colorscheme jellyx
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
set wildmode=list:longest
set wildignore=*.o,*~,*.pyc,.git/*,.hg/*,.svn/*,*.DS_Store
set hidden
set splitright
set splitbelow
set winminheight=0
set winminwidth=0
set updatecount=20
set lazyredraw
set ttyfast
set ttymouse=xterm
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
set relativenumber
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

" select all
"map <C-A> ggVG
" escape
inoremap jw <Esc>
" remove highlights
nmap <Leader><CR> :nohlsearch<CR>
" search within visual block
vnoremap / <esc>/\v%V

" }}}
" --- pasting {{{

" yank to end of line
noremap Y y$
" copy to clipboard
map <leader>y "+yy
" paste from clipboard
map <leader>p "+p
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
" change directory to the file being edited
nnoremap <leader>C :cd %:p:h<CR>:pwd<CR>
" fix windoze ^M
noremap <Leader>rmm mmHmt:%s/<C-V><CR>//ge<CR>'tzt'm

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
map <silent> <F4> :set nonu!<CR>
imap <silent> <F4> <C-O>:set nonu!<CR>
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
" --- alignment {{{

nmap <silent> <leader>al :left<CR>
nmap <silent> <leader>ac :center<CR>
nmap <silent> <leader>ar :right<CR>
nmap <silent> <leader>rr :AlignRight<CR>

" }}}

" Programming
" --- autocompletion {{{

" customize autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
" change to directory of file
nmap <silent> ,. :cd%:h<CR>

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

" map alt-[h,j,k,l,=] to resizing a window split
" map alt-[s,v] to horizontal and vertical split respectively
" map alt-[n,p] to moving to next and previous window respectively
if has('unix')
  nnoremap h <C-w><
  nnoremap j <C-w>-
  nnoremap k <C-w>+
  nnoremap l <C-w>>
  nnoremap = <C-W>=
  nnoremap s :split<CR>
  nnoremap v :vsplit<CR>
  nnoremap n <C-W><C-W>
  nnoremap p <C-W><S-W>
else
  nnoremap <M-h> <C-w><
  nnoremap <M-j> <C-w>-
  nnoremap <M-k> <C-w>+
  nnoremap <M-l> <C-w>>
  nnoremap <M-=> <C-W>=
  nnoremap <M-s> :split<CR>
  nnoremap <M-v> :vsplit<CR>
  nnoremap <M-n> <C-W><C-W>
  nnoremap <M-p> <C-W><S-W>
endif
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

au BufRead,BufNewFile,BufWrite {*.ejs} set ft=html
au BufRead,BufNewFile,BufWrite {*.markdown,*.md,*.mdk,*.ronn} set ft=markdown conceallevel=0
au BufRead,BufNewFile,BufWrite {*.textile} set ft=textile
au BufRead,BufNewFile,BufWrite {*.pl,*.pm,*.t} set ft=perl sw=4 ts=4
au BufRead,BufNewFile,BufWrite {*.json} set ft=javascript
au BufRead,BufNewFile,BufWrite {*.coffee} set ft=coffee
au BufRead,BufNewFile,BufWrite {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,*.god,.irbrc,irb_tempfile*} set ft=ruby
au BufRead,BufNewFile,BufWrite {Tupfile,*.tup} setf tup
au BufRead,BufNewFile,BufWrite {*.bin} set ft=xxd

" }}}

" omnicompletion {{{

autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType clojure set omnifunc=clojurecomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
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

source ~/.vim/settings.vim

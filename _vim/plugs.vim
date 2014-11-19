silent! if plug#begin('~/.vim/plugged')
" status
Plug 'itchyny/lightline.vim'

" windows
Plug 'spolu/dwm.vim'
Plug 'talek/obvious-resize'

" buffers
Plug 'moll/vim-bbye', { 'on': 'Bdelete' }
Plug 'ton/vim-bufsurf'
Plug 'vim-scripts/clone', { 'on': [ 'CloneAs', 'SCloneAs' ] }
Plug 'AndrewRadev/inline_edit.vim', { 'on': 'InlineEdit' }
Plug 'sjbach/lusty'
Plug 'chrisbra/Recover.vim'
Plug 'henrik/rename.vim', { 'on': 'Rename' }
Plug 'itchyny/thumbnail.vim', { 'on': 'Thumbnail' }

" splits
Plug 'mattboehm/vim-accordion', { 'on': 'Accordion' }
Plug 'mattboehm/vim-unstack', { 'on': [ 'UnstackFromClipboard',
                                      \ 'UnstackFromSelection',
                                      \ 'UnstackFromText' ] }
Plug 'vim-scripts/VerticalHelp', { 'on': 'H' }

" tabs
Plug 'gcmt/taboo.vim', { 'on': [ 'TabooOpen',
                               \ 'TabooRename',
                               \ 'TabooReset' ] }

" filesystem
Plug 'dockyard/vim-easydir'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'bogado/file-line'
Plug 'scrooloose/nerdtree', { 'on': [ 'Bookmark',
                                    \ 'BookmarkToRoot',
                                    \ 'ClearAllBookmarks',
                                    \ 'ClearBookmarks',
                                    \ 'NERDTree',
                                    \ 'NERDTreeClose',
                                    \ 'NERDTreeCWD',
                                    \ 'NERDTreeFind',
                                    \ 'NERDTreeFromBookmark',
                                    \ 'NERDTreeMirror',
                                    \ 'NERDTreeToggle',
                                    \ 'OpenBookmark',
                                    \ 'ReadBookmarks',
                                    \ 'RevealBookmark' ] }
Plug 'jistr/vim-nerdtree-tabs', { 'on': [ '<Plug>NERDTreeFocusToggle',
                                        \ '<Plug>NERDTreeMirrorOpen',
                                        \ '<Plug>NERDTreeMirrorToggle',
                                        \ '<Plug>NERDTreeSteppedClose',
                                        \ '<Plug>NERDTreeSteppedOpen',
                                        \ '<Plug>NERDTreeTabsClose',
                                        \ '<Plug>NERDTreeTabsFind',
                                        \ '<Plug>NERDTreeTabsOpen',
                                        \ '<Plug>NERDTreeTabsToggle' ] }
Plug 'buztard/vim-nomad', { 'on': 'UpdateEnv' }

" search and replace
Plug 'tpope/vim-abolish'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf'
Plug 'haya14busa/incsearch.vim', { 'on': [ '<Plug>(incsearch-backward)',
                                         \ '<Plug>(incsearch-forward)',
                                         \ '<Plug>(incsearch-stay)' ] }
Plug 'henrik/vim-indexed-search'
Plug 'osyo-manga/vim-over', { 'on': 'OverCommandLine' }
Plug 'dahu/SearchParty'
Plug 'Shougo/unite.vim'

" movement
Plug 'yonchu/accelerated-smooth-scroll', { 'on': [ '<Plug>(ac-smooth-scroll-c-b)',
                                                 \ '<Plug>(ac-smooth-scroll-c-b_v)',
                                                 \ '<Plug>(ac-smooth-scroll-c-d)',
                                                 \ '<Plug>(ac-smooth-scroll-c-d_v)',
                                                 \ '<Plug>(ac-smooth-scroll-c-f)',
                                                 \ '<Plug>(ac-smooth-scroll-c-f_v)',
                                                 \ '<Plug>(ac-smooth-scroll-c-u)',
                                                 \ '<Plug>(ac-smooth-scroll-c-u_v)' ] }
Plug 'rhysd/clever-f.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/matchit.zip'
Plug 'myusuf3/numbers.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'bruno-/vim-vertical-move'

" repeat
Plug 'daisuzu/autorepeat.vim', { 'on': '<Plug>(autorepeat)' }
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/visualrepeat'

" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" surround
Plug 'tpope/vim-surround'

" comments
Plug 'tpope/vim-commentary'

" sessions
Plug 'tpope/vim-obsession', { 'on': 'Obsession' }
Plug 'tpope/vim-projectionist', { 'on': [ 'A',
                                        \ 'AD',
                                        \ 'AS',
                                        \ 'AT',
                                        \ 'AV',
                                        \ 'Cd',
                                        \ 'D',
                                        \ 'E',
                                        \ 'Lcd',
                                        \ 'ProjectDo',
                                        \ 'S',
                                        \ 'T',
                                        \ 'V' ] }
Plug 'dhruvasagar/vim-prosession', { 'on': 'Prosession' }

" align
Plug 'JLimperg/Align'
Plug 'sk1418/blockit'
Plug 'atweiden/vim-dragvisuals'
Plug 'junegunn/vim-easy-align'
Plug 'dhruvasagar/vim-table-mode', { 'on': [ 'TableAddFormula',
                                           \ 'TableEvalFormulaLine',
                                           \ 'Tableize',
                                           \ 'TableModeDisable',
                                           \ 'TableModeEnable',
                                           \ 'TableModeRealign',
                                           \ 'TableModeToggle',
                                           \ '<Plug>(table-mode-add-formula)',
                                           \ '<Plug>(table-mode-cell-text-object-a)',
                                           \ '<Plug>(table-mode-cell-text-object-i)',
                                           \ '<Plug>(table-mode-delete-column)',
                                           \ '<Plug>(table-mode-delete-row)',
                                           \ '<Plug>(table-mode-echo-cell)',
                                           \ '<Plug>(table-mode-eval-formula)',
                                           \ '<Plug>(table-mode-motion-down)',
                                           \ '<Plug>(table-mode-motion-left)',
                                           \ '<Plug>(table-mode-motion-right)',
                                           \ '<Plug>(table-mode-motion-up)',
                                           \ '<Plug>(table-mode-realign)',
                                           \ '<Plug>(table-mode-sort)',
                                           \ '<Plug>(table-mode-tableize)',
                                           \ '<Plug>(table-mode-tableize-delimiter)' ] }
Plug 'godlygeek/tabular'
Plug 'atsepkov/vim-tabularity'
Plug 'vim-scripts/vis'

" textobj
Plug 'tommcdo/vim-centaur'
Plug 'terryma/vim-expand-region'
Plug 'tek/vim-fieldtrip'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-scripts/LineJuggler'
Plug 'vim-scripts/LineJugglerCommands', { 'on': [ 'Replace', 'Swap' ] }
Plug 'kana/vim-operator-user'
Plug 'AndrewRadev/sideways.vim'
Plug 'kana/vim-submode'
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-entire'
Plug 'reedes/vim-textobj-quote'
Plug 'reedes/vim-textobj-sentence'
Plug 'kana/vim-textobj-user'
Plug 'coderifous/textobj-word-column.vim'

" bookmarks
Plug 'tommcdo/vim-kangaroo'
Plug 'kshenoy/vim-signature'
Plug 'AndrewRadev/simple_bookmarks.vim', { 'on': [ 'Bookmark',
                                                 \ 'CopenBookmarks',
                                                 \ 'DelBookmark',
                                                 \ 'GotoBookmark' ] }

" macros
Plug 'dahu/VimLocalMacros'
Plug 'vim-scripts/marvim'
Plug 'naquad/Partial.vim', { 'on': 'Partial' }

" auto-close
Plug 'jiangmiao/auto-pairs'

" multiple cursors
Plug 'terryma/vim-multiple-cursors'

" tags
Plug 'xolox/vim-easytags', { 'on': [ 'HighlightTags', 'UpdateTags' ] }
Plug 'majutsushi/tagbar', { 'on': [ 'Tagbar',
                                  \ 'TagbarClose',
                                  \ 'TagbarCurrentTag',
                                  \ 'TagbarDebug',
                                  \ 'TagbarDebugEnd',
                                  \ 'TagbarGetTypeConfig',
                                  \ 'TagbarOpen',
                                  \ 'TagbarOpenAutoClose',
                                  \ 'TagbarSetFoldlevel',
                                  \ 'TagbarShowTag',
                                  \ 'TagbarToggle',
                                  \ 'TagbarTogglePause' ] }
Plug 'h1mesuke/unite-outline', { 'on': 'Unite' }

" diffs
Plug 'AndrewRadev/linediff.vim'

" vcs
Plug 'rhysd/committia.vim', { 'for': 'gitcommit' }
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
Plug 'ludovicchabant/vim-lawrencium', { 'on': [ 'Hg',
                                              \ 'Hgannotate',
                                              \ 'Hgannotatediffsum',
                                              \ 'Hgcd',
                                              \ 'Hgcommit',
                                              \ 'Hgdiff',
                                              \ 'Hgdiffsum',
                                              \ 'Hgdiffsumsplit',
                                              \ 'Hgedit',
                                              \ 'Hglcd',
                                              \ 'Hglog',
                                              \ 'Hglogdiff',
                                              \ 'Hglogdiffsum',
                                              \ 'Hglogexport',
                                              \ 'Hglogrevedit',
                                              \ 'Hglogtabdiff',
                                              \ 'Hglogtabdiffsum',
                                              \ 'Hglogthis',
                                              \ 'Hglogvdiff',
                                              \ 'Hglogvdiffsum',
                                              \ 'Hgqseries',
                                              \ 'Hgqserieseditmessage',
                                              \ 'Hgqseriesgoto',
                                              \ 'Hgqseriesrename',
                                              \ 'Hgrecord',
                                              \ 'Hgrecordabort',
                                              \ 'Hgrecordcommit',
                                              \ 'Hgrevert',
                                              \ 'Hgstatus',
                                              \ 'Hgstatusaddremove',
                                              \ 'Hgstatuscommit',
                                              \ 'Hgstatusdiff',
                                              \ 'Hgstatusdiffsum',
                                              \ 'Hgstatusedit',
                                              \ 'Hgstatusqnew',
                                              \ 'Hgstatusqrefresh',
                                              \ 'Hgstatusrefresh',
                                              \ 'Hgstatustabdiff',
                                              \ 'Hgstatustabdiffsum',
                                              \ 'Hgstatusvcommit',
                                              \ 'Hgstatusvdiff',
                                              \ 'Hgstatusvdiffsum',
                                              \ 'Hgtabdiff',
                                              \ 'Hgtabdiffsumsplit',
                                              \ 'Hgvcommit',
                                              \ 'Hgvdiff',
                                              \ 'Hgvdiffsumsplit',
                                              \ 'Hgvimgrep',
                                              \ 'Hgwannotate' ] }
Plug 'jmcantrell/vim-reporoot', { 'on': 'RepoRoot' }

" writing
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'reedes/vim-lexical', { 'for': [ 'markdown', 'mkd', 'textile' ] }
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
Plug 'reedes/vim-litecorrect', { 'for': [ 'markdown', 'mkd', 'textile' ] }
Plug 'reedes/vim-wordy', { 'on': [ 'NextWordy', 'NoWordy', 'PrevWordy', 'Wordy' ] }

" calendar
Plug 'itchyny/calendar.vim', { 'on': 'Calendar' }

" math
Plug 'arecarn/crunch.vim'
Plug 'jmcantrell/vim-numbered', { 'on': 'Numbered' }

" crypto
Plug 'jamessan/vim-gnupg'
Plug 'vim-scripts/openssl.vim'

" command runners
Plug 'tyru/capture.vim', { 'on': 'Capture' }
Plug 'tpope/vim-dispatch', { 'on': [ 'Copen',
                                   \ 'Dispatch',
                                   \ 'Focus',
                                   \ 'FocusDispatch',
                                   \ 'Make',
                                   \ 'Start' ] }
Plug 'ervandew/screen'
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
Plug 'epeli/slimux', { 'on': [ 'SlimuxREPLConfigure',
                             \ 'SlimuxREPLSendLine',
                             \ 'SlimuxREPLSendSelection',
                             \ 'SlimuxSendKeysConfigure',
                             \ 'SlimuxSendKeysLast',
                             \ 'SlimuxSendKeysPrompt',
                             \ 'SlimuxShellConfigure',
                             \ 'SlimuxShellLast',
                             \ 'SlimuxShellPrompt',
                             \ 'SlimuxShellRun' ] }
Plug 'tpope/vim-tbone', { 'on': [ 'Tattach',
                                \ 'Tmux',
                                \ 'Tput',
                                \ 'Twrite',
                                \ 'Tyank' ] }
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

" code completion
Plug 'mattn/emmet-vim', { 'for': [ 'css',
                                 \ 'haml',
                                 \ 'html',
                                 \ 'less',
                                 \ 'sass',
                                 \ 'scss',
                                 \ 'slim' ] }
Plug 'mattn/sonictemplate-vim', { 'on': [ 'Template', 'Unite' ] }
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'

" languages
Plug 'chase/vim-ansible-yaml', { 'for': 'ansible' }
Plug 'alisdair/vim-armasm', { 'for': 'armasm' }
Plug 'Shirk/vim-gas', { 'for': 'gas' }
Plug 'vim-scripts/awk-support.vim', { 'for': 'awk' }
Plug 'vim-jp/cpp-vim', { 'for': [ 'c', 'cpp' ] }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'c', 'cpp' ] }
Plug 'vim-scripts/ifdef-highlighting', { 'for': [ 'c', 'cpp' ] }
Plug 'vim-scripts/Conque-GDB', { 'for': [ 'c', 'cpp' ] }
Plug 'b4winckler/vim-objc', { 'for': 'objc' }
Plug 'tpope/vim-classpath', { 'for': [ 'clojure', 'java' ] }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'vim-scripts/vim-clojure-sql', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'typedclojure/vim-typedclojure', { 'for': 'clojure' }
Plug 'vim-scripts/JavaDecompiler.vim', { 'for': 'java' }
Plug 'OrangeT/vim-csharp', { 'for': 'cs' }
Plug 'hail2u/vim-css3-syntax', { 'for': [ 'css', 'scss' ] }
Plug '1995eaton/vim-better-css-completion', { 'for': 'css' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'tshirtman/vim-cython', { 'for': 'cython' }
Plug 'idanarye/vim-dutyl', { 'for': 'd', 'tag': 'v1.4.2' }
Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }
Plug 'honza/dockerfile.vim', { 'for': 'dockerfile' }
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
Plug 'vim-jp/vim-go-extra', { 'for': 'go' }
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
Plug 'othree/html5.vim', { 'for': [ 'html', 'javascript' ] }
Plug 'mustache/vim-mustache-handlebars', { 'for': [ 'html.handlebars',
                                                  \ 'html.mustache' ] }
Plug 'PotatoesMaster/i3-vim-syntax', { 'for': 'i3' }
Plug 'vim-scripts/iptables', { 'for': 'udev' }
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug '1995eaton/vim-better-javascript-completion', { 'for': 'javascript' }
Plug 'marijnh/tern_for_vim', { 'for': 'javascript' }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'felixge/vim-nodejs-errorformat', { 'for': 'javascript' }
Plug 'unc0/vim-gorilla-script', { 'for': [ 'egs', 'gorilla' ] }
Plug 'unc0/vim-egs', { 'for': 'egs' }
Plug 'mitsuhiko/vim-json', { 'for': 'json' }
Plug 'GutenYe/json5.vim', { 'for': 'json5' }
Plug 'dcjones/julia-minimalist-vim', { 'for': 'julia' }
Plug 'ajford/vimkivy', { 'for': 'kivy' }
Plug 'ledger/vim-ledger', { 'for': 'ledger' }
Plug 'lfairy/lilyvim', { 'for': 'lilypond' }
Plug 'xolox/vim-lua-ftplugin', { 'for': 'lua' }
Plug 'xolox/vim-lua-inspect', { 'for': 'lua' }
Plug 'leafo/moonscript-vim', { 'for': 'moon' }
Plug 'plasticboy/vim-markdown', { 'for': [ 'markdown', 'mkd' ] }
Plug 'mattly/vim-markdown-enhancements', { 'for': [ 'markdown', 'mkd' ] }
Plug 'nelstrom/vim-markdown-folding', { 'for': [ 'markdown', 'mkd' ] }
Plug 'zah/nimrod.vim', { 'for': [ 'nim' ] }
Plug 'vim-scripts/pacmanlog.vim', { 'for': 'pacmanlog' }
Plug 'vim-perl/vim-perl', { 'for': 'perl' }
Plug 'trapd00r/vim-after-syntax-perl', { 'for': 'perl' }
Plug 'c9s/perlomni.vim', { 'for': 'perl' }
Plug 'yko/mojo.vim', { 'for': 'html.epl' }
Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
Plug '2072/vim-syntax-for-PHP', { 'for': 'php' }
Plug 'm2mdas/phpcomplete-extended', { 'for': 'php' }
Plug 'vim-scripts/phpErrorMarker', { 'for': 'php' }
Plug 'vim-scripts/phpfolding.vim', { 'for': 'php' }
Plug 'mitsuhiko/vim-python-combined', { 'for': 'python' }
Plug 'jmcantrell/vim-virtualenv', { 'on': [ 'VirtualEnvActivate',
                                          \ 'VirtualEnvDeactivate',
                                          \ 'VirtualEnvList' ] }
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja' }
Plug 'vim-scripts/paredit.vim', { 'for': [ 'clojure',
                                         \ 'lisp',
                                         \ 'racket',
                                         \ 'scheme' ] }
Plug 'wlangstroth/vim-racket', { 'for': 'racket' }
Plug 'vim-scripts/scribble.vim', { 'for': 'racket' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'yaymukund/vim-rabl', { 'for': 'ruby' }
Plug 'tpope/vim-rbenv', { 'on': 'Rbenv' }
Plug 'wting/rust.vim', { 'for': 'rust' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'saltstack/salt-vim', { 'for': 'sls' }
Plug 'vim-scripts/SQLUtilities', { 'on': [ 'SQLUCreateColumnList',
                                         \ 'SQLUCreateProcedure',
                                         \ 'SQLUFormatter',
                                         \ 'SQLUGetColumnDataType',
                                         \ 'SQLUGetColumnDef' ] }
Plug 'vim-scripts/dbext.vim', { 'on': [ '<Plug>DBDescribeProcedure',
                                      \ '<Plug>DBDescribeProcedure',
                                      \ '<Plug>DBDescribeProcedureAskName',
                                      \ '<Plug>DBDescribeProcedureAskName',
                                      \ '<Plug>DBDescribeTable',
                                      \ '<Plug>DBDescribeTable',
                                      \ '<Plug>DBDescribeTableAskName',
                                      \ '<Plug>DBDescribeTableAskName',
                                      \ '<Plug>DBExecSQL',
                                      \ '<Plug>DBExecSQL',
                                      \ '<Plug>DBExecSQLUnderCursor',
                                      \ '<Plug>DBExecSQLUnderCursor',
                                      \ '<Plug>DBExecSQLUnderTopXCursor',
                                      \ '<Plug>DBExecSQLUnderTopXCursor',
                                      \ '<Plug>DBExecVisualSQL',
                                      \ '<Plug>DBExecVisualSQL',
                                      \ '<Plug>DBExecVisualTopXSQL',
                                      \ '<Plug>DBExecVisualTopXSQL',
                                      \ '<Plug>DBHistory',
                                      \ '<Plug>DBHistory',
                                      \ '<Plug>DBListColumn',
                                      \ '<Plug>DBListColumn',
                                      \ '<Plug>DBListColumn',
                                      \ '<Plug>DBListProcedure',
                                      \ '<Plug>DBListProcedure',
                                      \ '<Plug>DBListTable',
                                      \ '<Plug>DBListTable',
                                      \ '<Plug>DBListView',
                                      \ '<Plug>DBListView',
                                      \ '<Plug>DBOrientationToggle',
                                      \ '<Plug>DBOrientationToggle',
                                      \ '<Plug>DBPromptForBufferParameters',
                                      \ '<Plug>DBPromptForBufferParameters',
                                      \ '<Plug>DBSelectFromTable',
                                      \ '<Plug>DBSelectFromTable',
                                      \ '<Plug>DBSelectFromTableAskName',
                                      \ '<Plug>DBSelectFromTableAskName',
                                      \ '<Plug>DBSelectFromTableWithWhere',
                                      \ '<Plug>DBSelectFromTableWithWhere',
                                      \ '<Plug>DBSelectFromTopXTable',
                                      \ '<Plug>DBSelectFromTopXTable' ] }
Plug 'darvelo/vim-systemd', { 'for': [ 'systemd', 'udev' ] }
Plug 'whatyouhide/vim-tmux-syntax', { 'for': 'tmux-conf' }
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'trapd00r/vim-after-syntax-vim', { 'for': 'vim' }

" colors
Plug 'vim-scripts/AutumnLeaf'
Plug 'chriskempson/base16-vim'
Plug 'vim-scripts/baycomb'
Plug 'vim-scripts/Briofita'
Plug 'baskerville/bubblegum'
Plug 'vim-scripts/buttercream.vim'
Plug 'vim-scripts/candyman.vim'
Plug 'mattsacks/vim-eddie'
Plug 'endel/vim-github-colorscheme'
Plug 'johnantoni/grb256'
Plug 'morhetz/gruvbox'
Plug 'PotatoesMaster/vim-colors-harold'
Plug 'w0ng/vim-hybrid'
Plug 'cocopon/iceberg.vim'
Plug 'ciaranm/inkpot'
Plug 'twerth/ir_black'
Plug 'nanotech/jellybeans.vim'
Plug 'guns/jellyx.vim'
Plug 'zeis/vim-kolor'
Plug 'sk1418/last256'
Plug 'vim-scripts/lettuce.vim'
Plug 'vim-scripts/Liquid-Carbon'
Plug 'jonathanfilip/vim-lucius'
Plug 'vim-scripts/matrix.vim', { 'tag': '1.0' }
Plug 'vim-scripts/mayansmoke'
Plug 'vim-scripts/mimicpak'
Plug 'atweiden/vim-colors-miro8'
Plug 'djjcast/mirodark'
Plug 'tomasr/molokai'
Plug 'mrkn/mrkn256.vim'
Plug 'jeetsukumaran/vim-nefertiti'
Plug 'yuratomo/neon.vim'
Plug 'trapd00r/neverland-vim-theme'
Plug 'vim-scripts/oceanlight'
Plug 'reedes/vim-colors-pencil'
Plug 'vim-scripts/print_bw.zip'
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/Sorcerer'
Plug 'vim-scripts/stackoverflow.vim'
Plug 'vim-scripts/summerfruit256.vim'
Plug 'vim-scripts/TaQua'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'danpal/VibrantInk-for-Vim'
Plug 'octol/vombatidae-vim'
Plug 'molok/vim-vombato-colorscheme'
Plug 'rhysd/wallaby.vim'
Plug 'vim-scripts/xoria256.vim'
Plug 'jnurmine/Zenburn'
Plug 'vim-scripts/zenesque.vim'

" color utilities
Plug 'vim-scripts/CSApprox'
Plug 'vim-scripts/guicolorscheme.vim', { 'on': 'GuiColorScheme' }
Plug 'gerw/vim-HiLinkTrace', { 'on': [ 'HLT', 'HLTm' ] }
Plug 'mhinz/vim-hugefile'
Plug 'uguu-org/vim-matrix-screensaver', { 'on': 'Matrix' }
Plug 'edkolev/promptline.vim', { 'on': 'PromptlineSnapshot' }
Plug 'edkolev/tmuxline.vim', { 'on': 'Tmuxline' }
Plug 'junegunn/rainbow_parentheses.vim', { 'on': [ 'RainbowParentheses' ] }
Plug 'vim-scripts/SyntaxRange', { 'on': [ 'SyntaxIgnore', 'SyntaxInclude' ] }
Plug 'reedes/vim-thematic'
Plug 'KabbAmine/vCoolor.vim', { 'on': [ 'Hex2Hsl',
                                      \ 'Hex2Lit',
                                      \ 'Hex2Rgb',
                                      \ 'Hex2RgbPerc',
                                      \ 'Hsl2Hex',
                                      \ 'Hsl2Rgb',
                                      \ 'Rgb2Hex',
                                      \ 'Rgb2Hsl',
                                      \ 'Rgb2RgbPerc',
                                      \ 'RgbPerc2Hex',
                                      \ 'RgbPerc2Rgb',
                                      \ 'VCase',
                                      \ 'VCoolIns',
                                      \ 'VCoolor' ] }
Plug 'guns/xterm-color-table.vim', { 'on': [ 'EXtermColorTable',
                                           \ 'OXtermColorTable',
                                           \ 'SXtermColorTable',
                                           \ 'TXtermColorTable',
                                           \ 'VXtermColorTable',
                                           \ 'XtermColorTable' ] }

" utilities
Plug 'kana/vim-arpeggio'
Plug 'drmikehenry/vim-fixkey'
Plug 'vim-scripts/ingo-library'
Plug 'xolox/vim-misc'
Plug 'Shougo/vimproc.vim'
Plug 'tpope/vim-scriptease'
call plug#end()
endif

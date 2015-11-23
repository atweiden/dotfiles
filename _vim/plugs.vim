silent! if plug#begin('~/.vim/plugged')
" status
Plug 'itchyny/lightline.vim'

" windows
Plug 'talek/obvious-resize'

" buffers
Plug 'moll/vim-bbye', { 'on': 'Bdelete' }
Plug 'mihaifm/bufstop'
Plug 'vim-scripts/clone'
Plug 'AndrewRadev/inline_edit.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'chrisbra/Recover.vim'
Plug 'henrik/rename.vim', { 'on': 'Rename' }
Plug 'itchyny/thumbnail.vim'

" splits
Plug 'mattboehm/vim-accordion'
Plug 'mattboehm/vim-unstack'
Plug 'vim-scripts/VerticalHelp', { 'on': 'H' }

" folds
Plug 'Harenome/vim-neatfoldtext'

" filesystem
Plug 'dockyard/vim-easydir'
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
Plug 'jistr/vim-nerdtree-tabs', { 'on': [ 'NERDTreeFocusToggle',
                                        \ 'NERDTreeMirrorOpen',
                                        \ 'NERDTreeMirrorToggle',
                                        \ 'NERDTreeSteppedClose',
                                        \ 'NERDTreeSteppedOpen',
                                        \ 'NERDTreeTabsClose',
                                        \ 'NERDTreeTabsFind',
                                        \ 'NERDTreeTabsOpen',
                                        \ 'NERDTreeTabsToggle',
                                        \ '<Plug>NERDTreeFocusToggle',
                                        \ '<Plug>NERDTreeMirrorOpen',
                                        \ '<Plug>NERDTreeMirrorToggle',
                                        \ '<Plug>NERDTreeSteppedClose',
                                        \ '<Plug>NERDTreeSteppedOpen',
                                        \ '<Plug>NERDTreeTabsClose',
                                        \ '<Plug>NERDTreeTabsFind',
                                        \ '<Plug>NERDTreeTabsOpen',
                                        \ '<Plug>NERDTreeTabsToggle' ] }
Plug 'buztard/vim-nomad'
Plug 'Shougo/vimfiler.vim'

" keyboard
Plug 'kana/vim-arpeggio'
Plug 'drmikehenry/vim-fixkey'

" search and replace
Plug 'tpope/vim-abolish'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/vim-fnr'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'osyo-manga/vim-hopping'
Plug 'haya14busa/incsearch.vim'
"Plug 'henrik/vim-indexed-search'
"Plug 'google/vim-searchindex'
"Plug 'qstrahl/vim-matchmaker', { 'on': [ 'Matchmaker', 'MatchmakerToggle' ] }
Plug 'osyo-manga/vim-over'
Plug 't9md/vim-quickhl'
Plug 'dahu/SearchParty'
Plug 'Shougo/unite.vim'
Plug 'idanarye/vim-yankitute'

" sort
Plug 'vim-scripts/AdvancedSorters'

" movement
Plug 'gcmt/breeze.vim', { 'for': [ 'eelixir',
                                 \ 'egs',
                                 \ 'ejs',
                                 \ 'eruby',
                                 \ 'hamlet',
                                 \ 'html',
                                 \ 'html.epl',
                                 \ 'html.handlebars',
                                 \ 'html.mustache',
                                 \ 'javascript',
                                 \ 'jinja',
                                 \ 'markdown',
                                 \ 'php',
                                 \ 'xml' ] }
Plug 'rhysd/clever-f.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-scripts/matchit.zip'
Plug 'myusuf3/numbers.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'bruno-/vim-vertical-move'

" repeat
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/visualrepeat'

" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" surround
Plug 'tpope/vim-surround'

" comments
Plug 'tpope/vim-commentary'

" modelines
Plug 'ciaranm/securemodelines'

" sessions
Plug 'tpope/vim-projectionist'
Plug 'xolox/vim-session'

" align
Plug 'JLimperg/Align'
Plug 'sk1418/blockit'
"Plug 'atweiden/vim-dragvisuals'
Plug 'junegunn/vim-easy-align'
Plug 'tommcdo/vim-lion'
Plug 'dhruvasagar/vim-table-mode'
Plug 'godlygeek/tabular'
Plug 'atsepkov/vim-tabularity'
Plug 't9md/vim-textmanip'
Plug 'vim-scripts/vis'

" textobj
Plug 'junegunn/vim-after-object'
Plug 'tommcdo/vim-centaur'
"Plug 'terryma/vim-expand-region'
Plug 'tek/vim-fieldtrip'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-scripts/LineJuggler'
Plug 'vim-scripts/LineJugglerCommands'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'AndrewRadev/sideways.vim'
Plug 'kana/vim-submode'
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'thinca/vim-textobj-function-javascript', { 'for': 'javascript' }
Plug 'thinca/vim-textobj-function-perl', { 'for': [ 'perl', 'perl6' ] }
"Plug 'kana/vim-textobj-lastpat'
Plug 'reedes/vim-textobj-quote'
Plug 'reedes/vim-textobj-sentence'
Plug 'coderifous/textobj-word-column.vim'

" bookmarks
Plug 'tommcdo/vim-kangaroo'
Plug 'kshenoy/vim-signature'
Plug 'AndrewRadev/simple_bookmarks.vim'

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
Plug 'majutsushi/tagbar'
Plug 'h1mesuke/unite-outline'

" diffs
Plug 'vim-scripts/diffchar.vim'
Plug 'AndrewRadev/linediff.vim'
Plug 'junkblocker/patchreview-vim'

" vcs
Plug 'cohama/agit.vim'
Plug 'rhysd/committia.vim'
Plug 'tpope/vim-fugitive'
"Plug 'gregsexton/gitv', { 'on': 'Gitv' }
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
                                              \ 'Hgremove',
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
Plug 'idanarye/vim-merginal'
Plug 'jmcantrell/vim-reporoot', { 'on': 'RepoRoot' }

" writing
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-lexical', { 'for': [ 'markdown', 'mkd', 'textile' ] }
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-litecorrect', { 'for': [ 'markdown', 'mkd', 'textile' ] }
Plug 'reedes/vim-wordy'

" calendar
Plug 'itchyny/calendar.vim'

" math
Plug 'jmcantrell/vim-numbered', { 'on': 'Numbered' }

" crypto
Plug 'jamessan/vim-gnupg'
Plug 'vim-scripts/openssl.vim'

" command runners
Plug 'tyru/capture.vim'
Plug 'tpope/vim-dispatch'
Plug 'idanarye/vim-erroneous'
Plug 'idanarye/vim-integrake'
Plug 'xuhdev/SingleCompile'
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
Plug 'tpope/vim-tbone'
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
Plug 'zef/vim-cycle'
Plug 'mattn/emmet-vim', { 'for': [ 'css',
                                 \ 'haml',
                                 \ 'html',
                                 \ 'less',
                                 \ 'sass',
                                 \ 'scss',
                                 \ 'slim',
                                 \ 'stylus' ] }
Plug 'mattn/sonictemplate-vim'
Plug 't9md/vim-transform'
Plug 'SirVer/ultisnips', { 'on': [] }
"Plug 'tdcdev/ycm_simple_conf'
Plug 'rdnetto/YCM-Generator', { 'on': [ 'CCGenerateConfig',
                                      \ 'YcmGenerateConfig' ],
                                      \ 'branch': 'stable' }
Plug 'Valloric/YouCompleteMe', { 'on': [] }

" https://github.com/junegunn/vim-plug/wiki/faq#loading-plugins-manually
augroup load_us_ycm
  autocmd!
  "autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
  autocmd InsertEnter * call plug#load('YouCompleteMe')
                     \| call youcompleteme#Enable() | autocmd! load_us_ycm
augroup END

" debuggers
"Plug 'vim-scripts/Conque-GDB', { 'for': [ 'c', 'cpp' ] }
"Plug 'idanarye/vim-vebugger'

" languages
Plug 'chase/vim-ansible-yaml', { 'for': 'ansible' }
Plug 'kylef/apiblueprint.vim', { 'for': 'apiblueprint' }
Plug 'prurigro/vim-archversion', { 'for': 'archversion' }
Plug 'alisdair/vim-armasm', { 'for': 'armasm' }
Plug 'Shirk/vim-gas', { 'for': 'gas' }
Plug 'vim-scripts/awk-support.vim', { 'for': 'awk' }
Plug 'vim-jp/vim-cpp', { 'for': [ 'c', 'cpp' ] }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': [ 'c', 'cpp' ] }
Plug 'vim-scripts/ifdef-highlighting', { 'for': [ 'c', 'cpp' ] }
Plug 'b4winckler/vim-objc', { 'for': 'objc' }
Plug 'tpope/vim-classpath', { 'for': [ 'clojure', 'java' ] }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'vim-scripts/vim-clojure-sql', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-leiningen', { 'for': 'clojure' }
Plug 'guns/vim-slamhound', { 'for': 'clojure' }
Plug 'typedclojure/vim-typedclojure', { 'for': 'clojure' }
Plug 'rhysd/vim-crystal', { 'for': 'crystal' }
Plug 'OrangeT/vim-csharp', { 'for': 'cs' }
Plug 'hail2u/vim-css3-syntax', { 'for': [ 'css', 'scss' ] }
Plug '1995eaton/vim-better-css-completion', { 'for': 'css' }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'tshirtman/vim-cython', { 'for': 'cython' }
Plug 'idanarye/vim-dutyl', { 'for': 'd' }
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
Plug 'edkolev/erlang-motions.vim', { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-tags', { 'for': 'erlang' }
Plug 'fishcakez/vim-dialyzer', { 'for': 'erlang' }
Plug 'aliva/vim-fish', { 'for': 'fish' }
Plug 'kongo2002/fsharp-vim', { 'for': 'fsharp' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'vim-jp/vim-go-extra', { 'for': 'go' }
Plug 'Alotor/groovim', { 'for': 'groovy' }
Plug 'vim-scripts/gsl.vim', { 'for': 'gsl' }
Plug 'tpope/vim-haml', { 'for': [ 'haml', 'sass', 'scss' ] }
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
"Plug 'enomsg/vim-haskellConcealPlus', { 'for': 'haskell' }
Plug 'Twinside/vim-haskellFold', { 'for': 'haskell' }
Plug 'travitch/hasksyn', { 'for': 'haskell' }
Plug 'wting/lhaskell.vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'pbrisbin/vim-syntax-shakespeare', { 'for': [ 'cassius',
                                                 \ 'hamlet',
                                                 \ 'julius',
                                                 \ 'lucius' ] }
Plug 'jdonaldson/vaxe', { 'for': [ 'haxe',
                                 \ 'hss',
                                 \ 'hxml',
                                 \ 'lime.xml',
                                 \ 'nmml.xml' ] }
Plug 'd0c-s4vage/pfp-vim', { 'on': [ 'PfpInit', 'PfpParse' ] }
Plug 'gabesoft/vim-java', { 'for': 'java' }
Plug 'krisajenkins/vim-java-sql', { 'for': 'java' }
Plug 'youjumpiwatch/vim-javacomplete', { 'for': 'java' }
Plug 'vim-scripts/JavaDecompiler.vim', { 'for': 'java' }
Plug 'neapel/vim-java-bytecode', { 'for': 'java-bytecode' }
Plug 'JalaiAmitahl/maven-compiler.vim', { 'for': 'java, pom' }
Plug 'othree/html5.vim', { 'for': [ 'html', 'javascript' ] }
Plug 'mustache/vim-mustache-handlebars', { 'for': [ 'html.handlebars',
                                                  \ 'html.mustache' ] }
Plug 'PotatoesMaster/i3-vim-syntax', { 'for': 'i3' }
Plug 'vim-scripts/iptables', { 'for': 'udev' }
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'othree/yajs.vim', { 'for': [ 'eelixir',
                                 \ 'egs',
                                 \ 'ejs',
                                 \ 'eruby',
                                 \ 'haml',
                                 \ 'hamlet',
                                 \ 'html',
                                 \ 'html.epl',
                                 \ 'html.handlebars',
                                 \ 'html.mustache',
                                 \ 'jade',
                                 \ 'javascript',
                                 \ 'jinja',
                                 \ 'php',
                                 \ 'slim' ] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': [ 'coffeescript',
                                                        \ 'eelixir',
                                                        \ 'egs',
                                                        \ 'ejs',
                                                        \ 'eruby',
                                                        \ 'haml',
                                                        \ 'hamlet',
                                                        \ 'html',
                                                        \ 'html.epl',
                                                        \ 'html.handlebars',
                                                        \ 'html.mustache',
                                                        \ 'jade',
                                                        \ 'javascript',
                                                        \ 'jinja',
                                                        \ 'livescript',
                                                        \ 'php',
                                                        \ 'slim',
                                                        \ 'typescript' ] }
Plug 'jason0x43/vim-js-indent', { 'for': [ 'html',
                                         \ 'javascript',
                                         \ 'typescript' ] }
Plug '1995eaton/vim-better-javascript-completion', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
Plug 'facebook/vim-flow', { 'for': 'javascript' }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'unc0/vim-gorilla-script', { 'for': [ 'egs', 'gorilla' ] }
Plug 'unc0/vim-egs', { 'for': 'egs' }
Plug 'nikvdp/ejs-syntax', { 'for': 'ejs' }
Plug 'gkz/vim-ls', { 'for': 'ls' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'mitsuhiko/vim-json', { 'for': 'json' }
Plug 'GutenYe/json5.vim', { 'for': 'json5' }
Plug 'dcjones/julia-minimalist-vim', { 'for': 'julia' }
Plug 'ajford/vimkivy', { 'for': 'kivy' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'ledger/vim-ledger', { 'for': 'ledger' }
Plug 'lfairy/lilyvim', { 'for': 'lilypond' }
Plug 'xolox/vim-lua-ftplugin', { 'for': 'lua' }
Plug 'xolox/vim-lua-inspect', { 'for': 'lua' }
Plug 'leafo/moonscript-vim', { 'for': 'moon' }
Plug 'tpope/vim-markdown', { 'for': [ 'markdown', 'mkd' ] }
Plug 'mattly/vim-markdown-enhancements', { 'for': [ 'markdown', 'mkd' ] }
Plug 'nelstrom/vim-markdown-folding', { 'for': [ 'markdown', 'mkd' ] }
Plug 'zah/nim.vim', { 'for': 'nim' }
Plug 'atweiden/merlin.vim', { 'for': [ 'merlin', 'ocaml', 'omlet' ], 'branch': 'vim' }
Plug 'def-lkb/vimbufsync', { 'for': [ 'merlin', 'ocaml', 'omlet' ] }
Plug 'def-lkb/ocp-indent-vim', { 'for': [ 'ocaml', 'omlet' ] }
Plug 'anyakichi/vim-ocp-index', { 'for': [ 'ocaml', 'omlet' ] }
Plug 'vim-scripts/pacmanlog.vim', { 'for': 'pacmanlog' }
Plug 'vim-perl/vim-perl', { 'for': [ 'perl', 'perl6' ] }
"Plug 'trapd00r/vim-after-syntax-perl', { 'for': [ 'perl', 'perl6' ] }
Plug 'yuuki1/perl-local-lib-path.vim', { 'for': [ 'perl', 'perl6' ] }
Plug 'c9s/perlomni.vim', { 'for': [ 'perl', 'perl6' ] }
Plug 'yko/mojo.vim', { 'for': 'html.epl' }
Plug 'hhvm/vim-hack', { 'for': 'php' }
Plug 'mxw/vim-xhp', { 'for': 'php' }
Plug '2072/PHP-Indenting-for-VIm', { 'for': 'php' }
Plug '2072/vim-syntax-for-PHP', { 'for': 'php' }
Plug 'm2mdas/phpcomplete-extended', { 'for': 'php' }
Plug 'vim-scripts/phpfolding.vim', { 'for': 'php' }
Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
Plug 'mitsuhiko/vim-python-combined', { 'for': 'python' }
Plug 'jmcantrell/vim-virtualenv', { 'for': 'python' }
Plug 'jgors/vimux-ipy', { 'for': 'python' }
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'jinja' }
Plug 'vim-scripts/paredit.vim', { 'for': [ 'clojure',
                                         \ 'lisp',
                                         \ 'racket',
                                         \ 'scheme' ] }
Plug 'wlangstroth/vim-racket', { 'for': 'racket' }
Plug 'vim-scripts/scribble.vim', { 'for': 'racket' }
Plug 'IN3D/vim-raml', { 'for': 'raml' }
Plug 'mitsuhiko/vim-rst', { 'for': 'rst' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'yaymukund/vim-rabl', { 'for': 'ruby' }
Plug 'atweiden/vim-citrus', { 'for': 'citrus' }
Plug 'tpope/vim-rbenv', { 'on': 'Rbenv' }
Plug 'wting/rust.vim', { 'for': 'rust' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'derekwyatt/vim-sbt', { 'for': 'sbt' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'saltstack/salt-vim', { 'for': 'sls' }
Plug 'vim-scripts/SQLUtilities'
Plug 'vim-scripts/dbext.vim'
Plug 'vim-jp/vim-streem', { 'for': 'streem' }
Plug 'toyamarinyon/vim-swift', { 'for': 'swift' }
Plug 'darvelo/vim-systemd', { 'for': [ 'systemd', 'udev' ] }
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'cespare/vim-toml', { 'for': [ 'markdown', 'toml' ] }
Plug 'atweiden/vim-uzbl', { 'for': 'uzbl' }
Plug 'atweiden/vim-vala', { 'for': 'vala' }
"Plug 'trapd00r/vim-after-syntax-vim', { 'for': 'vim' }

" colors
Plug 'romainl/Apprentice'
Plug 'vim-scripts/AutumnLeaf'
Plug 'chriskempson/base16-vim'
Plug 'vim-scripts/baycomb'
Plug 'atweiden/vim-colors-behelit'
Plug 'vim-scripts/Briofita'
Plug 'baskerville/bubblegum'
Plug 'vim-scripts/buttercream.vim'
Plug 'vim-scripts/candyman.vim'
Plug 'vim-scripts/chlordane.vim'
Plug 'vyshane/cleanroom-vim-color'
Plug 'alem0lars/vim-colorscheme-darcula'
Plug 'mattsacks/vim-eddie'
Plug 'chase/focuspoint-vim'
Plug 'vim-scripts/github-theme'
Plug 'whatyouhide/vim-gotham'
Plug 'johnantoni/grb256'
Plug 'morhetz/gruvbox'
Plug 'PotatoesMaster/vim-colors-harold'
Plug 'w0ng/vim-hybrid'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'cocopon/iceberg.vim'
Plug 'ciaranm/inkpot'
Plug 'twerth/ir_black'
Plug 'nanotech/jellybeans.vim'
Plug 'guns/jellyx.vim'
Plug 'zeis/vim-kolor'
Plug 'atweiden/vim-colors-kongo'
Plug 'sk1418/last256'
Plug 'vim-scripts/lettuce.vim'
Plug 'wimstefan/Lightning'
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
Plug 'wolf-dog/nighted.vim'
Plug 'vim-scripts/oceanlight'
Plug 'reedes/vim-colors-pencil'
Plug 'vim-scripts/print_bw.zip'
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/Sorcerer'
Plug 'vim-scripts/stackoverflow.vim'
Plug 'marlun/vim-starwars'
Plug 'vim-scripts/summerfruit256.vim'
Plug 'vim-scripts/TaQua'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'Bravo13/vim-perl-colorscheme'
Plug 'atweiden/VibrantInk-for-Vim', { 'branch': 'plugin-manager-compatibility' }
Plug 'octol/vombatidae-vim'
Plug 'molok/vim-vombato-colorscheme'
Plug 'vyshane/vydark-vim-color'
Plug 'vyshane/vyterm-vim-color'
Plug 'rhysd/wallaby.vim'
Plug 'wellsjo/wellsokai.vim'
Plug 'vim-scripts/xoria256.vim'
Plug 'jnurmine/Zenburn'
Plug 'vim-scripts/zenesque.vim'

" color utilities
Plug 'ntpeters/vim-better-whitespace'
Plug 'gerw/vim-HiLinkTrace', { 'on': [ 'HLT', 'HLTm' ] }
Plug 'mhinz/vim-hugefile'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'uguu-org/vim-matrix-screensaver', { 'on': 'Matrix' }
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vim-scripts/SyntaxAttr.vim'
Plug 'vim-scripts/SyntaxRange'
Plug 'reedes/vim-thematic'
Plug 'KabbAmine/vCoolor.vim'
Plug 'guns/xterm-color-table.vim', { 'on': [ 'EXtermColorTable',
                                           \ 'OXtermColorTable',
                                           \ 'SXtermColorTable',
                                           \ 'TXtermColorTable',
                                           \ 'VXtermColorTable',
                                           \ 'XtermColorTable' ] }

" utilities / dependencies
Plug 'vim-scripts/ingo-library'
Plug 'xolox/vim-misc'
Plug 'junegunn/vim-pseudocl'
Plug 'Shougo/vimproc.vim'
Plug 'tpope/vim-scriptease'
Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-user'
call plug#end()
endif

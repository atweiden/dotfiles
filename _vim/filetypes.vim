" languages {{{

augroup languages
  autocmd!
  autocmd BufEnter,BufNewFile {*.ino,*.pde} set ft=arduino
  autocmd BufEnter,BufNewFile {*.bib} set ft=bib
  autocmd BufEnter,BufNewFile {*.cfg,.ackrc,.ctags,.dunstrc,.hgrc,.npmrc} set ft=cfg
  autocmd BufEnter,BufNewFile {*.clj,*.cljc,*.cljs,*.cljx,*.edn} set ft=clojure
  autocmd BufEnter,BufNewFile {*.coffee,*.ck,*.coffeekup,Cakefile} set ft=coffee
  autocmd BufEnter,BufNewFile {.curlrc,.gitignore,.gitattributes,.hgignore,.jshintignore} set ft=conf
  autocmd BufEnter,BufNewFile {.conkyrc*} set ft=conkyrc
  autocmd BufEnter,BufNewFile {*.c} set ft=c
  autocmd BufEnter,BufNewFile {*.cpp,*.hpp} set ft=cpp
  autocmd BufEnter,BufNewFile {*.cr,*.crystal,Projectfile} set ft=crystal
  autocmd BufEnter,BufNewFile {*.cs} set ft=cs
  autocmd BufEnter,BufNewFile {*.css} set ft=css
  autocmd BufEnter,BufNewFile {*.csv,*.psv,*.tsv} set ft=csv
  autocmd BufEnter,BufNewFile {*.pxd,*.pxi,*.pyx} set ft=cython
  autocmd BufEnter,BufNewFile {*.d} set ft=d
  autocmd BufEnter,BufNewFile {*.dart} set ft=dart
  autocmd BufEnter,BufNewFile {*.dock,Dockerfile*} set ft=dockerfile
  autocmd BufEnter,BufNewFile {*.eex} set ft=eelixir
  autocmd BufEnter,BufNewFile {*.ex,*.exs} set ft=elixir
  autocmd BufEnter,BufNewFile {*.erl,*.es,*.hrl,*.xrl,*.yaws,rebar.config} set ft=erlang
  autocmd BufEnter,BufNewFile {*.egs} set ft=egs
  autocmd BufEnter,BufNewFile {*.erb} set ft=eruby
  autocmd BufEnter,BufNewFile {*.fs,*.fsi,*.fsx} set ft=fs
  autocmd BufEnter,BufNewFile {*.git/config,.gitconfig,.gitmodules,gitconfig} set ft=gitconfig
  autocmd BufEnter,BufNewFile {COMMIT_EDITMSG} set ft=gitcommit
  autocmd BufEnter,BufNewFile {*gtkrc*} set ft=gtkrc
  autocmd BufEnter,BufNewFile {*.go} set ft=go
  autocmd BufEnter,BufNewFile {*.gs} set ft=gorilla
  autocmd BufEnter,BufNewFile {*.groovy,*.gradle} set ft=groovy
  autocmd BufEnter,BufNewFile {*.gsl} set ft=gsl
  autocmd BufEnter,BufNewFile {*.html,*.htm,*.ejs} set ft=html
  autocmd BufEnter,BufNewFile {*.html.ep,*.html.epl} set ft=html.epl
  autocmd BufEnter,BufNewFile {*.haml,*.hamlbars,*.hamlc} set ft=haml
  autocmd BufEnter,BufNewFile {*.hs} set ft=haskell
  autocmd BufEnter,BufNewFile {*.hss} set ft=hss
  autocmd BufEnter,BufNewFile {*.hx} set ft=haxe
  autocmd BufEnter,BufNewFile {*.hxml} set ft=hxml
  autocmd BufEnter,BufNewFile {*.ini,php.ini,php-fpm.conf,my.cnf} set ft=dosini
  autocmd BufEnter,BufNewFile {.inputrc} set ft=readline
  autocmd BufEnter,BufNewFile {*.jade} set ft=jade
  autocmd BufEnter,BufNewFile {*.java} set ft=java
  autocmd BufEnter,BufNewFile {*.javap} set ft=java-bytecode
  autocmd BufEnter,BufNewFile {pom.xml} set ft=pom
  autocmd BufEnter,BufNewFile {*.js,*.jsm,*.jss,*.jsx,Jakefile} set ft=javascript
  autocmd BufEnter,BufNewFile {*.json,*.jsonp,.eslintrc,.jshintrc,.jsxhintrc,META.info} set ft=json
  autocmd BufEnter,BufNewFile {*.json5} set ft=json5
  autocmd BufEnter,BufNewFile {*.j2,*.jinja,*.jinja2} set ft=jinja
  autocmd BufEnter,BufNewFile {*.jl} set ft=julia
  autocmd BufEnter,BufNewFile {*.kv} set ft=kivy
  autocmd BufEnter,BufNewFile {*.ledger} set ft=ledger
  autocmd BufEnter,BufNewFile {*.less} set ft=less
  autocmd BufEnter,BufNewFile {*.lime} set ft=lime.xml
  autocmd BufEnter,BufNewFile {*.ly,*.ily} set ft=lilypond
  autocmd BufEnter,BufNewFile {*.lisp} set ft=lisp
  autocmd BufEnter,BufNewFile {*.ll} set ft=llvm
  autocmd BufEnter,BufNewFile {*.ls,*Slakefile} set ft=ls
  autocmd BufEnter,BufNewFile {*.lua} set ft=lua
  autocmd BufEnter,BufNewFile {*.markdown,*.md,*.mkd,*.cpt,*.ronn} set ft=markdown conceallevel=0
  autocmd BufEnter,BufNewFile {*.nim} set ft=nim
  autocmd BufEnter,BufNewFile {*.nmml} set ft=nmml.xml
  autocmd BufEnter,BufNewFile {*.ml,*.mli} set ft=ocaml
  autocmd BufEnter,BufNewFile {*.php,*.phpt,*.ctp,*.hh,*.hhi} set ft=php
  autocmd BufEnter,BufNewFile {.AURINFO,.SRCINFO} set ft=PKGBUILD
  autocmd BufEnter,BufNewFile {cpanfile} set ft=perl
  autocmd BufEnter,BufNewFile {*.p6,*.pl6,*.pm6,*.t6,*.nqp} set ft=perl6
  autocmd BufEnter,BufNewFile {*.pod} set ft=pod
  autocmd BufEnter,BufNewFile {*.pod6} set ft=pod6
  autocmd BufEnter,BufNewFile {*.pp} set ft=puppet
  autocmd BufEnter,BufNewFile {*.pro} set ft=pro
  autocmd BufEnter,BufNewFile {*.py,.pdbrc,.pythonrc,.python_history} set ft=python
  autocmd BufEnter,BufNewFile {*.r,*.R,*.s,*.S,*.Rhistory,*.Rprofile} set ft=r
  autocmd BufEnter,BufNewFile {*.rb,*.cap,*.gemspec,*.god,*.jbuilder,*.podspec,*.rabl,*.rake,*.rant,*.rbw,*.thor,.caprc,.irbrc,.pryrc,[Bb]uildfile,Berksfile,Capfile,Cheffile,Guardfile,.Guardfile,Gemfile,Podfile,Puppetfile,[Rr]akefile,[Rr]antfile,[Tt]horfile,[Vv]agrantfile,config.ru,irb_tempfile*} set ft=ruby
  autocmd BufEnter,BufNewFile {*.rkt} set ft=racket
  autocmd BufEnter,BufNewFile {*.rmd,*.Rmd} set ft=rmd
  autocmd BufEnter,BufNewFile {*.Rout*} set ft=rout
  autocmd BufEnter,BufNewFile {*.rrst,*.Rrst} set ft=rrst
  autocmd BufEnter,BufNewFile {*.rs} set ft=rust
  autocmd BufEnter,BufNewFile {*.rst} set ft=rst
  autocmd BufEnter,BufNewFile {*.sass} set ft=sass
  autocmd BufEnter,BufNewFile {*.scss} set ft=scss
  autocmd BufEnter,BufNewFile {*.scala} set ft=scala
  autocmd BufEnter,BufNewFile {*.sbt} set ft=sbt
  autocmd BufEnter,BufNewFile {*.scm} set ft=scheme
  autocmd BufEnter,BufNewFile {.screenrc} set ft=screen
  autocmd BufEnter,BufNewFile {*.sh,*.install,.bashrc,.bash_logout,.bash_profile,.xinitrc,.xsession,PKGBUILD} set ft=sh
  autocmd BufEnter,BufNewFile {*.slim} set ft=slim
  autocmd BufEnter,BufNewFile {*.sls} set ft=sls
  autocmd BufEnter,BufNewFile {*.sql,.psqlrc} set ft=sql
  autocmd BufEnter,BufNewFile {*.strm} set ft=streem
  autocmd BufEnter,BufNewFile {*.styl,*.stylus} set ft=stylus
  autocmd BufEnter,BufNewFile {*.swift} set ft=swift
  autocmd BufEnter,BufNewFile {*.tex} set ft=tex
  autocmd BufEnter,BufNewFile {*.textile} set ft=textile
  autocmd BufEnter,BufNewFile {*.tmux,*tmux.conf*} set ft=tmux
  autocmd BufEnter,BufNewFile {*.toml,Cargo.lock} set ft=toml
  autocmd BufEnter,BufNewFile {*.transactions} set ft=transactions
  autocmd BufEnter,BufNewFile {*.tup,Tupfile} set ft=tup
  autocmd BufEnter,BufNewFile {*.ts} set ft=typescript
  autocmd BufEnter,BufNewFile {*.vala,*.vapi} set ft=vala
  autocmd BufEnter,BufNewFile {*.vim,*.vimencrypt,*viminfo*,*vimrc*} set ft=vim
  autocmd BufEnter,BufNewFile {*vimshrc*} set ft=vimshrc
  autocmd BufEnter,BufNewFile {*.automount,*.mount,*.path,*.service,*.socket,*.swap,*.target,*.timer} set ft=systemd
  autocmd BufEnter,BufNewFile {.wgetrc} set ft=wget
  autocmd BufEnter,BufNewFile {.Xdefaults,.Xresources} set ft=xdefaults
  autocmd BufEnter,BufNewFile {*.xml,*.xaml} set ft=xml
  autocmd BufEnter,BufNewFile {.Xmodmap} set ft=xmodmap
  autocmd BufEnter,BufNewFile {*.bin} set ft=xxd
  autocmd BufEnter,BufNewFile {*.zsh,.zprofile,.zshrc} set ft=zsh
augroup END

" }}}

" language omnicompletion {{{

augroup language-omnicompletion
  autocmd!
  autocmd FileType c setlocal omnifunc=ccomplete#Complete
  autocmd FileType clojure setlocal omnifunc=clojurecomplete#Complete
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType erlang setlocal omnifunc=erlang_complete#Complete
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
  autocmd FileType html,xhtml setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType java setlocal omnifunc=javacomplete#Complete
  autocmd FileType java setlocal completefunc=javacomplete#CompleteParamsInfo
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
augroup END

" }}}

" language dictionaries {{{

augroup language-dictionaries
  autocmd!
  autocmd FileType javascript setlocal dictionary+=$HOME/.vim/dict/javascript.dict
  autocmd FileType javascript setlocal dictionary+=$HOME/.vim/dict/node.dict
augroup END

" }}}

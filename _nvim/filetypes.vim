" languages {{{

augroup languages
  autocmd!
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.ino,*.pde} set ft=arduino
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.bib} set ft=bib
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.cfg,.ackrc,.ctags,.dunstrc,.hgrc,.npmrc} set ft=cfg
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.clj,*.cljs,*.edn} set ft=clojure
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.coffee,*.ck,*.coffeekup,Cakefile} set ft=coffee
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {.curlrc,.gitignore,.gitattributes,.hgignore,.jshintignore} set ft=conf
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {.conkyrc*} set ft=conkyrc
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.c} set ft=c
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.cpp,*.hpp} set ft=cpp
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.cs} set ft=cs
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.css} set ft=css
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.csv,*.psv,*.tsv} set ft=csv
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.pxd,*.pxi,*.pyx} set ft=cython
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.d} set ft=d
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.dart} set ft=dart
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.dock,Dockerfile*} set ft=dockerfile
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.eex} set ft=eelixir
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.ex,*.exs} set ft=elixir
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.erl,*.es,*.hrl,*.xrl,*.yaws,rebar.config} set ft=erlang
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.egs} set ft=egs
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.erb} set ft=eruby
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.fs,*.fsi,*.fsx} set ft=fs
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.git/config,.gitconfig,.gitmodules,gitconfig} set ft=gitconfig
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*gtkrc*} set ft=gtkrc
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.go} set ft=go
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.groovy,*.gradle} set ft=groovy
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.gs} set ft=gorilla
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.html,*.htm,*.ejs} set ft=html
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.html.ep,*.html.epl} set ft=html.epl
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.haml,*.hamlbars,*.hamlc} set ft=haml
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.hs} set ft=haskell
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.hss} set ft=hss
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.hx} set ft=haxe
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.hxml} set ft=hxml
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.ini,php.ini,php-fpm.conf,my.cnf} set ft=dosini
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {.inputrc} set ft=readline
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.jade} set ft=jade
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.java} set ft=java
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.javap} set ft=java-bytecode
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {pom.xml} set ft=pom
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.js,*.jsm,*.jss,*.jsx,Jakefile} set ft=javascript
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.json,*.jsonp,.eslintrc,.jshintrc,.jsxhintrc,META.info} set ft=json
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.json5} set ft=json5
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.j2,*.jinja,*.jinja2} set ft=jinja
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.jl} set ft=julia
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.kv} set ft=kivy
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.ledger} set ft=ledger
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.less} set ft=less
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.lime} set ft=lime.xml
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.ly,*.ily} set ft=lilypond
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.lisp} set ft=lisp
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.ll} set ft=llvm
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.ls,*Slakefile} set ft=ls
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.lua} set ft=lua
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.markdown,*.md,*.mkd,*.cpt,*.ronn} set ft=markdown conceallevel=0
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.nim} set ft=nim
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.nmml} set ft=nmml.xml
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.ml,*.mli} set ft=ocaml
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.php,*.phpt,*.ctp,*.hh,*.hhi} set ft=php
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {.AURINFO,.SRCINFO} set ft=PKGBUILD
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {cpanfile} set ft=perl
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.p6,*.pl6,*.pm6,*.t6,*.nqp} set ft=perl6
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.pod} set ft=pod
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.pod6} set ft=pod6
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.pp} set ft=puppet
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.pro} set ft=pro
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.py,.pdbrc,.pythonrc,.python_history} set ft=python
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.r,*.R,*.s,*.S,*.Rhistory,*.Rprofile} set ft=r
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.rb,*.cap,*.gemspec,*.god,*.jbuilder,*.podspec,*.rabl,*.rake,*.rant,*.rbw,*.thor,.caprc,.irbrc,.pryrc,[Bb]uildfile,Berksfile,Capfile,Cheffile,Guardfile,.Guardfile,Gemfile,Podfile,Puppetfile,[Rr]akefile,[Rr]antfile,[Tt]horfile,[Vv]agrantfile,config.ru,irb_tempfile*} set ft=ruby
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.rkt} set ft=racket
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.rmd,*.Rmd} set ft=rmd
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.Rout*} set ft=rout
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.rrst,*.Rrst} set ft=rrst
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.rs} set ft=rust
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.rst} set ft=rst
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.sass} set ft=sass
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.scss} set ft=scss
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.scala} set ft=scala
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.sbt} set ft=sbt
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.scm} set ft=scheme
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {.screenrc} set ft=screen
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.sh,*.install,.bashrc,.bash_logout,.bash_profile,.xinitrc,.xsession,PKGBUILD} set ft=sh
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.slim} set ft=slim
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.sls} set ft=sls
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.sql,.psqlrc} set ft=sql
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.strm} set ft=streem
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.styl,*.stylus} set ft=stylus
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.swift} set ft=swift
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.tex} set ft=tex
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.textile} set ft=textile
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.tmux,*tmux.conf*} set ft=tmux
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.toml,Cargo.lock} set ft=toml
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.tup,Tupfile} set ft=tup
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.ts} set ft=typescript
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.vala,*.vapi} set ft=vala
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.vim,*.vimencrypt,*viminfo*,*vimrc*} set ft=vim
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*vimshrc*} set ft=vimshrc
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.automount,*.mount,*.path,*.service,*.socket,*.swap,*.target,*.timer} set ft=systemd
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {.wgetrc} set ft=wget
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {.Xdefaults,.Xresources} set ft=xdefaults
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.xml,*.xaml} set ft=xml
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {.Xmodmap} set ft=xmodmap
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.bin} set ft=xxd
  autocmd BufEnter,BufRead,BufNewFile,BufWrite {*.zsh,.zprofile,.zshrc} set ft=zsh
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

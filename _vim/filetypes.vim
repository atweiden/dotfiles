" languages {{{

au BufEnter,BufRead,BufNewFile,BufWrite {*.ino,*.pde} set ft=arduino
au BufEnter,BufRead,BufNewFile,BufWrite {*.bib} set ft=bib
au BufEnter,BufRead,BufNewFile,BufWrite {*.cfg,.ackrc,.ctags,.dunstrc,.hgrc,.npmrc} set ft=cfg
au BufEnter,BufRead,BufNewFile,BufWrite {*.clj,*.cljs,*.edn} set ft=clojure
au BufEnter,BufRead,BufNewFile,BufWrite {*.coffee,*.ck,*.coffeekup,Cakefile} set ft=coffee
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
au BufEnter,BufRead,BufNewFile,BufWrite {*.git/config,.gitconfig,.gitmodules,gitconfig} set ft=gitconfig
au BufEnter,BufRead,BufNewFile,BufWrite {*gtkrc*} set ft=gtkrc
au BufEnter,BufRead,BufNewFile,BufWrite {*.go} set ft=go
au BufEnter,BufRead,BufNewFile,BufWrite {*.groovy,*.gradle} set ft=groovy
au BufEnter,BufRead,BufNewFile,BufWrite {*.gs} set ft=gorilla
au BufEnter,BufRead,BufNewFile,BufWrite {*.html,*.htm,*.ejs} set ft=html
au BufEnter,BufRead,BufNewFile,BufWrite {*.html.ep,*.html.epl} set ft=html.epl
au BufEnter,BufRead,BufNewFile,BufWrite {*.haml,*.hamlbars,*.hamlc} set ft=haml
au BufEnter,BufRead,BufNewFile,BufWrite {*.hs} set ft=haskell
au BufEnter,BufRead,BufNewFile,BufWrite {*.hx} set ft=haxe
au BufEnter,BufRead,BufNewFile,BufWrite {*.ini,php.ini,php-fpm.conf,my.cnf} set ft=dosini
au BufEnter,BufRead,BufNewFile,BufWrite {.inputrc} set ft=readline
au BufEnter,BufRead,BufNewFile,BufWrite {*.jade} set ft=jade
au BufEnter,BufRead,BufNewFile,BufWrite {*.java} set ft=java
au BufEnter,BufRead,BufNewFile,BufWrite {*.javap} set ft=java-bytecode
au BufEnter,BufRead,BufNewFile,BufWrite {pom.xml} set ft=pom
au BufEnter,BufRead,BufNewFile,BufWrite {*.js,*.jsm,*.jss,*.jsx,.jshintrc,Jakefile} set ft=javascript
au BufEnter,BufRead,BufNewFile,BufWrite {*.json,*.jsonp} set ft=json
au BufEnter,BufRead,BufNewFile,BufWrite {*.json5} set ft=json5
au BufEnter,BufRead,BufNewFile,BufWrite {*.j2,*.jinja,*.jinja2} set ft=jinja
au BufEnter,BufRead,BufNewFile,BufWrite {*.jl} set ft=julia
au BufEnter,BufRead,BufNewFile,BufWrite {*.kv} set ft=kivy
au BufEnter,BufRead,BufNewFile,BufWrite {*.ledger} set ft=ledger
au BufEnter,BufRead,BufNewFile,BufWrite {*.less} set ft=less
au BufEnter,BufRead,BufNewFile,BufWrite {*.ly,*.ily} set ft=lilypond
au BufEnter,BufRead,BufNewFile,BufWrite {*.lisp} set ft=lisp
au BufEnter,BufRead,BufNewFile,BufWrite {*.ll} set ft=llvm
au BufEnter,BufRead,BufNewFile,BufWrite {*.lua} set ft=lua
au BufEnter,BufRead,BufNewFile,BufWrite {*.markdown,*.md,*.mkd,*.cpt,*.ronn} set ft=markdown conceallevel=0
au BufEnter,BufRead,BufNewFile,BufWrite {*.nim} set ft=nim
au BufEnter,BufRead,BufNewFile,BufWrite {*.ml,*.mli} set ft=ocaml
au BufEnter,BufRead,BufNewFile,BufWrite {*.php,*.phpt,*.ctp,*.hh,*.hhi} set ft=php
au BufEnter,BufRead,BufNewFile,BufWrite {.AURINFO,.SRCINFO} set ft=PKGBUILD
au BufEnter,BufRead,BufNewFile,BufWrite {*.pl,*.pm,*.t} set ft=perl
au BufEnter,BufRead,BufNewFile,BufWrite {*.pp} set ft=puppet
au BufEnter,BufRead,BufNewFile,BufWrite {*.pro} set ft=pro
au BufEnter,BufRead,BufNewFile,BufWrite {*.py,.pdbrc,.pythonrc,.python_history} set ft=python
au BufEnter,BufRead,BufNewFile,BufWrite {*.r,*.R,*.s,*.S,*.Rhistory,*.Rprofile} set ft=r
au BufEnter,BufRead,BufNewFile,BufWrite {*.rb,*.cap,*.gemspec,*.god,*.jbuilder,*.podspec,*.rabl,*.rake,*.rant,*.rbw,*.thor,.caprc,.irbrc,.pryrc,[Bb]uildfile,Berksfile,Capfile,Cheffile,Guardfile,.Guardfile,Gemfile,Podfile,Puppetfile,[Rr]akefile,[Rr]antfile,[Tt]horfile,[Vv]agrantfile,config.ru,irb_tempfile*} set ft=ruby
au BufEnter,BufRead,BufNewFile,BufWrite {*.rkt} set ft=racket
au BufEnter,BufRead,BufNewFile,BufWrite {*.rmd,*.Rmd} set ft=rmd
au BufEnter,BufRead,BufNewFile,BufWrite {*.Rout*} set ft=rout
au BufEnter,BufRead,BufNewFile,BufWrite {*.rrst,*.Rrst} set ft=rrst
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
au BufEnter,BufRead,BufNewFile,BufWrite {*.styl,*.stylus} set ft=stylus
au BufEnter,BufRead,BufNewFile,BufWrite {*.swift} set ft=swift
au BufEnter,BufRead,BufNewFile,BufWrite {*.tex} set ft=tex
au BufEnter,BufRead,BufNewFile,BufWrite {*.textile} set ft=textile
au BufEnter,BufRead,BufNewFile,BufWrite {*.tmux,*tmux.conf*} set ft=tmux-conf
au BufEnter,BufRead,BufNewFile,BufWrite {*.toml,Cargo.lock} set ft=toml
au BufEnter,BufRead,BufNewFile,BufWrite {*.tup,Tupfile} set ft=tup
au BufEnter,BufRead,BufNewFile,BufWrite {*.ts} set ft=typescript
au BufEnter,BufRead,BufNewFile,BufWrite {*.vala,*.vapi} set ft=vala
au BufEnter,BufRead,BufNewFile,BufWrite {*.vim,*.vimencrypt,*viminfo*,*vimrc*} set ft=vim
au BufEnter,BufRead,BufNewFile,BufWrite {*vimshrc*} set ft=vimshrc
au BufEnter,BufRead,BufNewFile,BufWrite {*.automount,*.mount,*.path,*.service,*.socket,*.swap,*.target,*.timer} set ft=systemd
au BufEnter,BufRead,BufNewFile,BufWrite {.wgetrc} set ft=wget
au BufEnter,BufRead,BufNewFile,BufWrite {.Xdefaults,.Xresources} set ft=xdefaults
au BufEnter,BufRead,BufNewFile,BufWrite {*.xml,*.xaml} set ft=xml
au BufEnter,BufRead,BufNewFile,BufWrite {.Xmodmap} set ft=xmodmap
au BufEnter,BufRead,BufNewFile,BufWrite {*.bin} set ft=xxd
au BufEnter,BufRead,BufNewFile,BufWrite {*.zsh,.zprofile,.zshrc} set ft=zsh

" }}}

" language omnicompletion {{{

au FileType c setlocal omnifunc=ccomplete#Complete
au FileType clojure setlocal omnifunc=clojurecomplete#Complete
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType erlang setlocal omnifunc=erlang_complete#Complete
au FileType haskell setlocal omnifunc=necoghc#omnifunc
au FileType html,xhtml setlocal omnifunc=htmlcomplete#CompleteTags
au FileType java setlocal omnifunc=javacomplete#Complete
au FileType java setlocal completefunc=javacomplete#CompleteParamsInfo
au FileType javascript setlocal omnifunc=js#CompleteJS
au FileType lisp,racket,scheme setlocal equalprg=scmindent
au FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
au FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
au FileType ruby,eruby let g:rubycomplete_rails = 1
au FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
au FileType sql setlocal omnifunc=sqlcomplete#Complete
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" }}}

" language dictionaries {{{

au FileType javascript setlocal dictionary+=$HOME/.vim/dict/javascript.dict
au FileType javascript setlocal dictionary+=$HOME/.vim/dict/node.dict

" }}}

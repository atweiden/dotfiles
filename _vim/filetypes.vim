" languages {{{

augroup languages
  autocmd!
  autocmd BufNewFile,BufRead {*.apib,*.apiblueprint} set ft=apiblueprint
  autocmd BufNewFile,BufRead {*.ino,*.pde} set ft=arduino
  autocmd BufNewFile,BufRead {*.bib} set ft=bib
  autocmd BufNewFile,BufRead {*.c} set ft=c
  autocmd BufNewFile,BufRead {*.cfg,.ackrc,.ctags,.dunstrc,.hgrc,.npmrc} set ft=cfg
  autocmd BufNewFile,BufRead {*.citrus} set ft=citrus
  autocmd BufNewFile,BufRead {*.clj,*.cljc,*.cljs,*.cljx,*.edn} set ft=clojure
  autocmd BufNewFile,BufRead {*.coffee,*.ck,*.coffeekup,Cakefile} set ft=coffee
  autocmd BufNewFile,BufRead {.curlrc,.gitignore,.gitattributes,.hgignore,.jshintignore} set ft=conf
  autocmd BufNewFile,BufRead {.conkyrc*} set ft=conkyrc
  autocmd BufNewFile,BufRead {*.cpp,*.hpp} set ft=cpp
  autocmd BufNewFile,BufRead {*.cr,*.crystal,Projectfile} set ft=crystal
  autocmd BufNewFile,BufRead {*.cs} set ft=cs
  autocmd BufNewFile,BufRead {*.css} set ft=css
  autocmd BufNewFile,BufRead {*.csv,*.psv,*.tsv} set ft=csv
  autocmd BufNewFile,BufRead {*.pxd,*.pxi,*.pyx} set ft=cython
  autocmd BufNewFile,BufRead {*.d} set ft=d
  autocmd BufNewFile,BufRead {*.dart} set ft=dart
  autocmd BufNewFile,BufRead {*.dock,Dockerfile*} set ft=dockerfile
  autocmd BufNewFile,BufRead {*.eex} set ft=eelixir
  autocmd BufNewFile,BufRead {*.ex,*.exs} set ft=elixir
  autocmd BufNewFile,BufRead {*.erl,*.es,*.hrl,*.xrl,*.yaws,rebar.config} set ft=erlang
  autocmd BufNewFile,BufRead {*.egs} set ft=egs
  autocmd BufNewFile,BufRead {*.erb,*.rhtml} set ft=eruby
  autocmd BufNewFile,BufRead {*.fs,*.fsi,*.fsx} set ft=fsharp
  autocmd BufNewFile,BufRead {*.git/config,.gitconfig,.gitmodules,gitconfig} set ft=gitconfig
  autocmd BufNewFile,BufRead {COMMIT_EDITMSG} set ft=gitcommit
  autocmd BufNewFile,BufRead {*gtkrc*} set ft=gtkrc
  autocmd BufNewFile,BufRead {*.go} set ft=go
  autocmd BufNewFile,BufRead {*.gs} set ft=gorilla
  autocmd BufNewFile,BufRead {*.groovy,*.gradle} set ft=groovy
  autocmd BufNewFile,BufRead {*.gsl} set ft=gsl
  autocmd BufNewFile,BufRead {*.html,*.htm,*.ejs} set ft=html
  autocmd BufNewFile,BufRead {*.html.ep,*.html.epl} set ft=html.epl
  autocmd BufNewFile,BufRead {*.haml,*.hamlbars,*.hamlc} set ft=haml
  autocmd BufNewFile,BufRead {*.hs} set ft=haskell
  autocmd BufNewFile,BufRead {*.hss} set ft=hss
  autocmd BufNewFile,BufRead {*.hx} set ft=haxe
  autocmd BufNewFile,BufRead {*.hxml} set ft=hxml
  autocmd BufNewFile,BufRead {*.ini,php.ini,php-fpm.conf,my.cnf} set ft=dosini
  autocmd BufNewFile,BufRead {.inputrc} set ft=readline
  autocmd BufNewFile,BufRead {*.jade} set ft=jade
  autocmd BufNewFile,BufRead {*.java} set ft=java
  autocmd BufNewFile,BufRead {*.javap} set ft=java-bytecode
  autocmd BufNewFile,BufRead {pom.xml} set ft=pom
  autocmd BufNewFile,BufRead {*.js,*.jsm,*.jss,*.jsx,Jakefile} set ft=javascript
  autocmd BufNewFile,BufRead {*.json,*.jsonp,.eslintrc,.jshintrc,.jsxhintrc,META.info} set ft=json
  autocmd BufNewFile,BufRead {*.json5} set ft=json5
  autocmd BufNewFile,BufRead {*.j2,*.jinja,*.jinja2} set ft=jinja
  autocmd BufNewFile,BufRead {*.jl} set ft=julia
  autocmd BufNewFile,BufRead {*.kv} set ft=kivy
  autocmd BufNewFile,BufRead {*.ledger} set ft=ledger
  autocmd BufNewFile,BufRead {*.less} set ft=less
  autocmd BufNewFile,BufRead {*.lime} set ft=lime.xml
  autocmd BufNewFile,BufRead {*.ly,*.ily} set ft=lilypond
  autocmd BufNewFile,BufRead {*.lisp} set ft=lisp
  autocmd BufNewFile,BufRead {*.ll} set ft=llvm
  autocmd BufNewFile,BufRead {*.ls,*Slakefile} set ft=ls
  autocmd BufNewFile,BufRead {*.lua} set ft=lua
  autocmd BufNewFile,BufRead {*.markdown,*.md,*.mkd,*.cpt,*.ronn} set ft=markdown conceallevel=0
  autocmd BufNewFile,BufRead {*.nim} set ft=nim
  autocmd BufNewFile,BufRead {*.nmml} set ft=nmml.xml
  autocmd BufNewFile,BufRead {*.ml,*.mli} set ft=ocaml
  autocmd BufNewFile,BufRead {*.php,*.phpt,*.ctp,*.hh,*.hhi} set ft=php
  autocmd BufNewFile,BufRead {.AURINFO,.SRCINFO} set ft=PKGBUILD
  autocmd BufNewFile,BufRead {cpanfile} set ft=perl
  autocmd BufNewFile,BufRead {*.p6,*.pl6,*.pm6,*.t6,*.nqp} set ft=perl6
  autocmd BufNewFile,BufRead {*.pod} set ft=pod
  autocmd BufNewFile,BufRead {*.pod6} set ft=pod6
  autocmd BufNewFile,BufRead {*.pp} set ft=puppet
  autocmd BufNewFile,BufRead {*.pro} set ft=pro
  autocmd BufNewFile,BufRead {*.py,.pdbrc,.pythonrc,.python_history} set ft=python
  autocmd BufNewFile,BufRead {*.r,*.R,*.s,*.S,*.Rhistory,*.Rprofile} set ft=r
  autocmd BufNewFile,BufRead {*.raml} set ft=raml
  autocmd BufNewFile,BufRead {*.rb,*.ruby,*.builder,*.cap,*.gemspec,*.god,*.jbuilder,*.podspec,*.rabl,*.rake,*.rant,*.rbw,*.rjs,*.ru,*.rxml,*.thor,.autotest,.caprc,.irbrc,.pryrc,.simplecov,Appraisals,[Bb]uildfile,Berksfile,Capfile,Cheffile,Guardfile,.Guardfile,Gemfile,Podfile,Puppetfile,[Rr]akefile,[Rr]antfile,[Rr]outefile,[Tt]horfile,[Vv]agrantfile,irb_tempfile*} set ft=ruby
  autocmd BufNewFile,BufRead {*.rkt} set ft=racket
  autocmd BufNewFile,BufRead {*.rmd,*.Rmd} set ft=rmd
  autocmd BufNewFile,BufRead {*.Rout*} set ft=rout
  autocmd BufNewFile,BufRead {*.rrst,*.Rrst} set ft=rrst
  autocmd BufNewFile,BufRead {*.rs} set ft=rust
  autocmd BufNewFile,BufRead {*.rst} set ft=rst
  autocmd BufNewFile,BufRead {*.sass} set ft=sass
  autocmd BufNewFile,BufRead {*.scss} set ft=scss
  autocmd BufNewFile,BufRead {*.scala} set ft=scala
  autocmd BufNewFile,BufRead {*.sbt} set ft=sbt
  autocmd BufNewFile,BufRead {*.scm} set ft=scheme
  autocmd BufNewFile,BufRead {.screenrc} set ft=screen
  autocmd BufNewFile,BufRead {*.sh,*.install,.bashrc,.bash_logout,.bash_profile,.xinitrc,.xsession,PKGBUILD} set ft=sh
  autocmd BufNewFile,BufRead {*.slim} set ft=slim
  autocmd BufNewFile,BufRead {*.sls} set ft=sls
  autocmd BufNewFile,BufRead {*.sql,.psqlrc} set ft=sql
  autocmd BufNewFile,BufRead {*.strm} set ft=streem
  autocmd BufNewFile,BufRead {*.styl,*.stylus} set ft=stylus
  autocmd BufNewFile,BufRead {*.swift} set ft=swift
  autocmd BufNewFile,BufRead {*.tex} set ft=tex
  autocmd BufNewFile,BufRead {*.textile} set ft=textile
  autocmd BufNewFile,BufRead {*.tmux,*tmux.conf*} set ft=tmux
  autocmd BufNewFile,BufRead {*.toml,Cargo.lock} set ft=toml
  autocmd BufNewFile,BufRead {*.transactions} set ft=transactions
  autocmd BufNewFile,BufRead {*.tup,Tupfile} set ft=tup
  autocmd BufNewFile,BufRead {*.ts,*.tsx} set ft=typescript
  autocmd BufNewFile,BufRead {*.uzbl,~/.config/uzbl/*,*/uzbl/config} set ft=uzbl
  autocmd BufNewFile,BufRead {*.vala,*.vapi} set ft=vala
  autocmd BufNewFile,BufRead {*.vim,*.vimencrypt,*viminfo*,*vimrc*} set ft=vim
  autocmd BufNewFile,BufRead {*vimshrc*} set ft=vimshrc
  autocmd BufNewFile,BufRead {*.automount,*.mount,*.path,*.service,*.socket,*.swap,*.target,*.timer} set ft=systemd
  autocmd BufNewFile,BufRead {.wgetrc} set ft=wget
  autocmd BufNewFile,BufRead {.Xdefaults,.Xresources} set ft=xdefaults
  autocmd BufNewFile,BufRead {*.xml,*.xaml} set ft=xml
  autocmd BufNewFile,BufRead {.Xmodmap} set ft=xmodmap
  autocmd BufNewFile,BufRead {*.bin} set ft=xxd
  autocmd BufNewFile,BufRead {*.zsh,.zprofile,.zshrc} set ft=zsh
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

" security {{{

augroup ccrypt
  autocmd!
  autocmd BufNewFile *.cpt call s:ccrypt_bufnewfile()
  autocmd BufReadPre,FileWritePre *.cpt call s:ccrypt_bufreadpre()
  autocmd BufReadPost,FileWritePost *.cpt call s:ccrypt_bufreadpost()
  autocmd BufWritePre,FileWritePre *.cpt call s:ccrypt_bufwritepre()
  autocmd BufWritePost,FileWritePost *.cpt call s:ccrypt_bufwritepost()
augroup END

augroup gpg
  autocmd!
  autocmd QuitPre *.gpg exec system('pkill gpg-agent')
augroup END

" }}}

function! MkArchversionSpecific(pkg, cat)
  if a:cat == "python"
    normal ysw]ourl = https://pypi.python.org/packages/source/=a:pkg[0]/=a:pkg/regex_name = =a:pkgjk0ojk
  elseif a:cat == "ruby"
    normal ysw]ourl = https://rubygems.org/gems/=a:pkg[5:-1]regex = =a:pkg[5:-1]-([-.\d]+).gemjk0ojk
  endif
endfunction

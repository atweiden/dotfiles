function! MkArchversionSpecific(pkg, cat)
  if a:cat == "python"
    normal ysw]ourl = https://pypi.python.org/packages/source/=a:pkg[0]
  elseif a:cat == "ruby"
    normal ysw]ourl = https://rubygems.org/gems/=a:pkg[5:-1]
  endif
endfunction
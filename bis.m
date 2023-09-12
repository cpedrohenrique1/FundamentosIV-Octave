function bis(n,a,b)
  n = 11
  a = 2
  b = 4
  for i = 1:n
    k = (a+b)/2
    disp([i a b k feval('f', k)])
    if feval('f',k) == 0
      break
    endif
    if (feval('f',a) * feval('f',k)) < 0
      b = k;
    else
      a = k;
    endif
  endfor
endfunction

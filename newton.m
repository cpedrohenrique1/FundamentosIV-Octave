function [x0, f, d, toler, IterMax] = newton(x0, f, d, toler, IterMax)
  Fx = feval(f,x0);
  DFx = feval(d,x0);
  x = x0;
  iter = 0;
  disp([iter, x, DFx, Fx])
  while true
    DeltaX = -Fx / DFx;
    x = x + DeltaX;
    Fx = feval(f,x);
    Dfx = feval(d,x);
    iter = iter + 1;
    disp([iter, x, DFx, Fx, DeltaX])
    if (abs(DeltaX) <= toler && abs(Fx) <= toler || (DFx == IterMax) || iter >= IterMax)
      break
    endif
  endwhile
  raiz = x
  if (abs(DeltaX) <= toler && abs(Fx) <= toler)
    CondErro = 0
  else
    CondErro = 1
  endif
endfunction

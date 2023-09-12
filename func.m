function [x, iter, CondErro] = bissecao[a, b, f, toler, IterMax]
  II = []
  AA = []
  FA = []
  BB = []
  FB = []
  XX = []
  FX = []
  DX = []
  Fa = feval('f',a);
  Fb = feval('f',b);
  if Fa * Fb > 0
    disp('Funcao nao troca sinal entre [a,b]')
  endif
  DeltaX = abs(b-a)/2
  iter = 0
  while 
    x = (a+b)/2
    Fx = f(x)
    disp(iter, a, Fa, Fb, b, Fb, x, Fx, DeltaX)
    if (DeltaX <= toler && abs(Fx) <= toler) || iter >= IterMax
      break
    endif
    if Fa * Fx > 0
      a = x
      Fa = Fx
    else
      b = x
    endif
    DeltaX = DeltaX/2
    iter = iter+1
  endwhile
  raix = x
  if DeltaX <= toler && abs(Fx) <= toler
    CondErro = 0
  else
    CondErro = 1
  endif
endfunction

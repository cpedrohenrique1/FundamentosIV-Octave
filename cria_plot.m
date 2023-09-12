function cria_plot(x, f)
  fx = []
  for i=1:length(x)
    fx = [fx, feval(f,x(i))];
  endfor
  plot(x, fx)
  grid
endfunction

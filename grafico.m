x = linspace(2,4)
fx=[];
for i=1:length(x)
  fx = [fx,feval('f',x(i))];
endfor
plot(x,fx)
grid
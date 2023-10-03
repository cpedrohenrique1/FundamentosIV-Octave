% x= [x1 x2]' (vetor coluna)
% x1 = x0 - inv(jf(x0)) * f(x0)'
function y = F(x)
    y(1) = x(1)^2 - cos(x(1) * x(2)) - 1;
    y(2) = sin(x(2)) - 2* cos(x(1));
endfunction
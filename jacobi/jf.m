function y = JF(x)
    y(1,1) = 2* x(1) + x(2)*sin(x(1) * x(2));
    y(1,2) = x(1) * sin(x(1) *x(2));
    y(2,1) = 2*sin(x(1));
    y(2,2) = cos(x(2));
endfunction
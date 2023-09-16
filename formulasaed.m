function y = formulasaed
    for x = 0.1 : 0.1 : 3.14159266
        f1x = (1 - cos(x))/x^2
        f2x = (sin(x)^2)/(x^2*(1+cos(x)))
    endfor
endfunction
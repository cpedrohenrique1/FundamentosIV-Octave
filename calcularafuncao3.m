function y = calcularafuncao3
    x = 36;
    y = 1e16;
    n = [-20, -19, 19, 20];
    for i = 1 : length(n)
        resultado = (y^n(i))/((e^n(i))^x)
    endfor
endfunction
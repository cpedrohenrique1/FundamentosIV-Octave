function y = calcularafuncao3
    x = 36;
    y = 1e16;
    n = [-20, -19, 19, 20];
    temp = y / e^x;
    for i = 1 : length(n)
        resultado = temp.^n
    endfor
endfunction
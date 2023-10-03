% solucao exata = rref(matriz)
% n = 3 -> 
% a = matriz
% b = 
% toler = 0.14 -> precisao
% IterMax = 2 -> quantas vezes vai rodar
% [x, iter, CondErro] = jacobi(3, [3 1/4 -1/2;0 -2 3;2 3 5], [3; -6; -2], 0.14, 2)

function [x, iter, CondErro] = jacobi(n, a, b, toler, IterMax)
for i = 1: n
    r = 1 / a(i,i);
    for j =1:n
        if i ~= j
            a(i,j)=a(i,j)*r;
        endif
    endfor
    b(i) = b(i)*r;
    x(i) = b(i);
endfor
iter = 0;
itera = 1;
while itera
    iter = iter+1;
    for i = 1:n
        soma = 0;
        for j = 1:n
            if i ~= j
                soma = soma + a(i,j) * x(j);
            endif
        endfor
        v(i) = b(i) - soma;
    endfor
    NormaNum = 0;
    NormaDen = 0;
    for i = 1:n
        t = abs(v(i) - x(i));
        if t > NormaNum
            NormaNum = t;
        endif
        if abs(v(i)) > NormaDen
            NormaDen = abs(v(i));
        endif
        x(i) = v(i);
    endfor
    NormaRel = NormaNum / NormaDen;
    disp([iter, x, NormaRel]);
    if (NormaRel <= toler) || (iter >= IterMax)
        itera = 0;
    endif
endwhile
if NormaRel <= toler
    CondErro = 0;
else
    CondErro = 1;
endif
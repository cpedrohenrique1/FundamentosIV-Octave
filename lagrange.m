% X = vetor abscissas
% Y = vetor ordenadas
% C = vetor coeficientes do polinômio de Lagrange
% L = matriz coeficientes do polinomio de Lagrange
function [C,L] = lagrange(X,Y)
    w = length(X);
    n = w - 1;
    L = zeros(w,w);
    for k = 1 : n + 1
      V = 1;
      for j = 1 : n + 1
        if k~=j
          V = conv(V,poly(X(j))) / (X(k)-X(j));
        endif
      endfor
      L(k,:) = V;  
    endfor
    C = Y * L;
endfunction
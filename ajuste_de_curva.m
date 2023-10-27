% x = [1.02 2.04 2.95 3.55]'
% y = [4.55 7.20 9.51 10.81]'
function ajuste_de_curva(x, y)
    % A = [x ones('numero de linhas','numero de colunas')]
    A = [x ones(33,1)]
    v = inv(A'*A)*A'*y
endfunction
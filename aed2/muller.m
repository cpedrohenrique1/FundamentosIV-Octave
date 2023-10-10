function [x, iter] = muller(f, x0, x1, x2, tol, maxiter)
    % Implementação do método de Muller para encontrar uma raiz de uma função f
    % Inputs:
    %   - f: função a ser encontrada a raiz
    %   - x0, x1, x2: valores iniciais para o método
    %   - tol: tolerância para o critério de parada
    %   - maxiter: número máximo de iterações permitidas
    % Outputs:
    %   - x: aproximação da raiz
    %   - iter: número de iterações realizadas
    
    % Inicialização das variáveis
    h1 = x1 - x0;
    h2 = x2 - x1;
    d1 = (f(x1) - f(x0)) / h1;
    d2 = (f(x2) - f(x1)) / h2;
    d = (d2 - d1) / (h2 + h1);
    iter = 0;
    
    % Loop principal do método de Muller
    while iter < maxiter
        b = d2 + h2 * d;
        D = (b^2 - 4*f(x2)*d)^0.5;
        
        % Escolha da raiz mais próxima de x2
        if abs(b - D) < abs(b + D)
            E = b + D;
        else
            E = b - D;
        end
        
        h = -2 * f(x2) / E;
        p = x2 + h;
        
        % Critério de parada
        if abs(h) < tol
            x = p;
            return
        end
        
        % Atualização das variáveis
        x0 = x1;
        x1 = x2;
        x2 = p;
        h1 = x1 - x0;
        h2 = x2 - x1;
        d1 = (f(x1) - f(x0)) / h1;
        d2 = (f(x2) - f(x1)) / h2;
        d = (d2 - d1) / (h2 + h1);
        iter = iter + 1;
    end
    
    % Caso o método não tenha convergido
    disp("O método de Muller não convergiu em %d iterações.", maxiter);
end

% Dados da Tabela 1
Y = [25.5000; 31.2000; 25.9000; 38.4000; 18.4000; 26.7000; 26.4000; 25.9000; 32.0000; 25.2000; 39.7000; 35.7000; 26.5000];
X = [ones(size(Y)), x1, x2, x3];

% Parâmetros do método de Gauss-Seidel
max_iter = 1000;
tolerance = 1e-6;

% Inicialização
beta = zeros(size(X, 2), 1);

% Iterações do Gauss-Seidel
for iter = 1:max_iter
    beta_old = beta;
    
    for i = 1:length(beta)
        sum_term = 0;
        for j = 1:length(beta)
            if j ~= i
                sum_term = sum_term + X(:, j) .* beta(j);
            end
        end
        beta(i) = (X(:, i)' * (Y - sum_term)) / (X(:, i)' * X(:, i));
    end
    
    % Critério de convergência
    if norm(beta - beta_old) < tolerance
        break;
    end
end

% Exibindo os resultados
disp('Coeficientes encontrados pelo Gauss-Seidel:');
disp(['Intercepto: ' num2str(beta(1))]);
disp(['Coeficiente x1: ' num2str(beta(2))]);
disp(['Coeficiente x2: ' num2str(beta(3))]);
disp(['Coeficiente x3: ' num2str(beta(4))]);

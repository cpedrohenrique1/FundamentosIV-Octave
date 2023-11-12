% Dados da Tabela 1
Y = [25.5000; 31.2000; 25.9000; 38.4000; 18.4000; 26.7000; 26.4000; 25.9000; 32.0000; 25.2000; 39.7000; 35.7000; 26.5000];
X = [ones(size(Y)), x1, x2, x3];

% Regressão Linear Múltipla usando pseudo-inversa
beta = pinv(X' * X) * X' * Y;

% Exibindo os resultados
disp('Coeficientes encontrados pela pseudo-inversa:');
disp(['Intercepto: ' num2str(beta(1))]);
disp(['Coeficiente x1: ' num2str(beta(2))]);
disp(['Coeficiente x2: ' num2str(beta(3))]);
disp(['Coeficiente x3: ' num2str(beta(4))]);

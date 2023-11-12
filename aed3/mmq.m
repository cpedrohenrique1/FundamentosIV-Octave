% Dados da Tabela 1
y = [25.5000; 31.2000; 25.9000; 38.4000; 18.4000; 26.7000; 26.4000; 25.9000; 32.0000; 25.2000; 39.7000; 35.7000; 26.5000];
x1 = [1.7400; 6.3200; 6.2200; 10.5200; 1.1900; 1.2200; 4.1000; 6.3200; 4.0800; 4.1500; 10.1500; 1.7200; 1.7000];
x2 = [5.3000; 5.4200; 8.4100; 4.6300; 11.6000; 5.8500; 6.6200; 8.7200; 4.4200; 7.6000; 4.8300; 3.1200; 5.3000];
x3 = [10.8000; 9.4000; 7.2000; 8.5000; 9.4000; 9.9000; 8.0000; 9.1000; 8.7000; 9.2000; 9.4000; 7.6000; 8.2000];

% Adicionando uma coluna de uns para o termo independente
X = [ones(size(x1)), x1, x2, x3];

% Calculando os coeficientes usando o Método dos Mínimos Quadrados (MMQ)
coefficients = (X' * X) \ (X' * y);

% Exibindo os resultados
disp('Coeficientes do Modelo de Regressão Linear Múltipla:');
disp(['Intercepto: ' num2str(coefficients(1))]);
disp(['Coeficiente x1: ' num2str(coefficients(2))]);
disp(['Coeficiente x2: ' num2str(coefficients(3))]);
disp(['Coeficiente x3: ' num2str(coefficients(4))]);
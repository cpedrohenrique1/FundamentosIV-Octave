% Dados originais
Y = [25.5000; 31.2000; 25.9000; 38.4000; 18.4000; 26.7000; 26.4000; 25.9000; 32.0000; 25.2000; 39.7000; 35.7000; 26.5000];
x1 = [1.7400; 6.3200; 6.2200; 10.5200; 1.1900; 1.2200; 4.1000; 6.3200; 4.0800; 4.1500; 10.1500; 1.7200; 1.7000];
x2 = [5.3000; 5.4200; 8.4100; 4.6300; 11.6000; 5.8500; 6.6200; 8.7200; 4.4200; 7.6000; 4.8300; 3.1200; 5.3000];

% Matriz de design sem x3
X_without_x3 = [ones(size(Y)), x1, x2];

% Coeficientes obtidos com MMQ para o modelo original
beta_mmq_original = [39.1573; 1.0161; -1.8616; -0.34326];

% Calcular ŷ (valores previstos) para o modelo original
y_hat_original = X * beta_mmq_original;

% Calcular as estatísticas para o cálculo de R^2
n_original = length(Y);
k_original = size(X, 2) - 1; % Número de preditores (excluindo o termo de intercepto)
y_mean_original = mean(Y);
SSE_original = sum((Y - y_hat_original).^2);
SST_original = sum((Y - y_mean_original).^2);

% Calcular R^2 ajustado para o modelo original
R2_adj_original = 1 - (SSE_original / (n_original - k_original - 1)) / (SST_original / (n_original - 1));

disp(['Coeficiente de Determinação Ajustado (R^2_adj) - Modelo Original: ' num2str(R2_adj_original)]);

% Coeficientes obtidos com MMQ para o modelo sem x3
beta_mmq_without_x3 = pinv(X_without_x3' * X_without_x3) * X_without_x3' * Y;

% Calcular ŷ (valores previstos) para o modelo sem x3
y_hat_without_x3 = X_without_x3 * beta_mmq_without_x3;

% Calcular as estatísticas para o cálculo de R^2 sem x3
n_without_x3 = length(Y);
k_without_x3 = size(X_without_x3, 2) - 1; % Número de preditores (excluindo o termo de intercepto)
y_mean_without_x3 = mean(Y);
SSE_without_x3 = sum((Y - y_hat_without_x3).^2);
SST_without_x3 = sum((Y - y_mean_without_x3).^2);

% Calcular R^2 ajustado sem x3
R2_adj_without_x3 = 1 - (SSE_without_x3 / (n_without_x3 - k_without_x3 - 1)) / (SST_without_x3 / (n_without_x3 - 1));

disp(['Coeficiente de Determinação Ajustado (R^2_adj) - Modelo sem x3: ' num2str(R2_adj_without_x3)]);

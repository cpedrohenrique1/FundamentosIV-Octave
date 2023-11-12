% Coeficientes obtidos com MMQ
beta_mmq = [39.1573; 1.0161; -1.8616; -0.34326];

% Calcular ŷ (valores previstos)
y_hat = X * beta_mmq;

% Calcular as estatísticas para o cálculo de R^2
n = length(Y);
k = size(X, 2) - 1; % Número de preditores (excluindo o termo de intercepto)
y_mean = mean(Y);
SSE = sum((Y - y_hat).^2);
SST = sum((Y - y_mean).^2);

% Calcular R^2 ajustado
R2_adj = 1 - (SSE / (n - k - 1)) / (SST / (n - 1));

disp(['Coeficiente de Determinação Ajustado (R^2_adj): ' num2str(R2_adj)]);

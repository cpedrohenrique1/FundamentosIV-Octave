% Coeficientes obtidos com MMQ
beta_mmq = [39.1573; 1.0161; -1.8616; -0.34326];

% Calcular ŷ (valores previstos)
y_hat = X * beta_mmq;

% Calcular as estatísticas para o cálculo de R^2
y_mean = mean(Y);
SSE = sum((Y - y_hat).^2);
SST = sum((Y - y_mean).^2);

% Calcular R^2
R2 = 1 - SSE / SST;

disp(['Coeficiente de Determinação (R^2): ' num2str(R2)]);

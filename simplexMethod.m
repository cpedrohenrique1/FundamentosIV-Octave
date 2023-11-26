function simplexMethod()
    % Coeficientes da função objetivo
    c = [-4; -5];

    % Coeficientes das restrições
    A = [3 1; 1 2];

    % Lados direitos das restrições
    b = [8; 9];

    % Adiciona variáveis de folga
    A = [A eye(size(A, 1))];
    c = [c; zeros(size(A, 2) - length(c), 1)];

    % Inicializa a tabela simplex
    tableau = [A eye(size(A, 1)) b; c' zeros(1, size(A, 1) + 1)];

    while any(tableau(end, 1:size(A, 2)) < 0)
        % Encontra a coluna pivô
        pivot_col = find(tableau(end, 1:size(A, 2)) < 0, 1);

        % Encontra a linha pivô
        ratios = tableau(1:end-1, end) ./ tableau(1:end-1, pivot_col);
        pivot_row = find(ratios > 0, 1, 'first');

        % Atualiza a tabela
        tableau = pivotOperation(tableau, pivot_row, pivot_col);
    end

    % Exibe a solução ótima
    optimal_solution = tableau(end, end);
    disp('Solução Ótima:');
    disp(optimal_solution);

    % Exibe os valores das variáveis de decisão
    decision_variables = tableau(1:end-1, end);
    disp('Valores das Variáveis de Decisão:');
    disp(decision_variables);
end

function tableau = pivotOperation(tableau, pivot_row, pivot_col)
    % Normaliza a linha pivô
    tableau(pivot_row, :) = tableau(pivot_row, :) / tableau(pivot_row, pivot_col);

    % Atualiza as outras linhas
    for i = 1:size(tableau, 1)
        if i ~= pivot_row
            multiplier = tableau(i, pivot_col);
            tableau(i, :) = tableau(i, :) - multiplier * tableau(pivot_row, :);
        end
    end
end

% Chama a função principal
simplexMethod();

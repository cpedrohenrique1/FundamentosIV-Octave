function integral_value = serietaylor(x_upper)
    % Definição da série truncada de Taylor
    P8 = @(x) 1 + x.^2 + x.^4/factorial(2) + x.^6/factorial(3) + x.^8/factorial(4);
    
    % Calcula a integral usando quad (quadratura numérica)
    integral_value = quad(P8, 0, x_upper);
end

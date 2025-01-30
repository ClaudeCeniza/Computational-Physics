function x = funcTrial(x0)
x = zeros(1,2); % initialize array x

x(1) =  x0 - exp(1-x0^2); % definition of function
x(2) = 1 - exp(1-x0^2) * (-2*x0); % derivative of f

end
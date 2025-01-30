function root = NewtonRaphson_SecantMethod(f,r0)
% In secant method, use the numerical derivative
x = zeros(1,2); % x(1) = value of function, x(2) = value of derivative
error = 0.1; % initilize error
root = 0; % initiliaze root to r0

    while error  > 0.0001
        x = f(r0); % calculate value of f and its derivative
        root = r0 - x(1)/x(2);
         % x(1) = value of function
         % x(2) = value of derivative
        
        error = abs(root - r0); % calculate error
        r0 = root; % set r0 old = new estimate of root
    end
    
end
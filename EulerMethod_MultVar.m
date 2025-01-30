function [t,x] = EulerMethod_MultVar(f,x0,t0,tf,dt)

x_Nvars = length(x0);           % Array size of 1D x0
% f function has the same size as x_length

t = t0:dt:tf                    % Initialize time t from t0 to tf
time_n = length(t);
x = zeros(time_n, x_Nvars);     % Initialize vector x
x(1,:) = x0;                    % Initialize x(1)


for i = 1:time_n-1
    m = f(t(i),x(i));           % Call the function f for the slope dx/dt
    x(i+1) = x(i) + m*dt;       % Calculate the value of x(i+1)
end

end
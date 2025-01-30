function [t,x] = EulerMethod(f,x0,t0,tf,dt)
t = t0:dt:tf        % Initialize time t from t0 to tf
n = length(t);
x = zeros(1,n);     % Initialize vector x
x(1) = x0;          % Initialize x(1)

for i = 1:n-1
    m = f(t(i),x(i));       % Call the function f for the slope dx/dt
    x(i+1) = x(i) + m*dt;   % Calculate the value of x(i+1)
end

end
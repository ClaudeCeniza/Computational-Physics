function [t,x] = RungeKutta4(f,r0,t0,tf,dt,opt1)
if nargin < 6
     % 6th parameter does not exist, so default it to something
      opt1 = 0;
end
% r0 is a vector for initial values of n variables r
% t0 initial time
% tf final time
% dt delta time
% opt1

t = t0:dt:tf; % Initialize array of time
n = length(t); % Get the array size of time t

r0_numVar = length(r0); % Get the number of r0 variables

x = zeros(r0_numVar,n); % Row for each variable. Column for time from t0 to tf

x(:,1) = r0; % Initialze column 1 for all rows to x0

k1 = zeros(r0_numVar,1); % Initialize vector of slope, column vector
k2 = zeros(r0_numVar,1); % Initialize vector of slope, column vector
k3 = zeros(r0_numVar,1); % Initialize vector of slope, column vector
k4 = zeros(r0_numVar,1); % Initialize vector of slope, column vector
        
    for i = 1:n-1
%         k1 = f(t(i), x(:,i),); % calculate the slope of n equations
%         k2 = f(t(i) + 0.5*dt, x(:,i) + 0.5*dt*k1); % calculate the slope of n equations
%         k3 = f(t(i) + 0.5*dt, x(:,i) + 0.5*dt*k2);
%         k4 = f(t(i) + dt, x(:,i) + dt*k3);
        
 % including the opt 1 that represents the energy
        k1 = f(t(i), x(:,i),opt1); % calculate the slope of n equations
        k2 = f(t(i) + 0.5*dt, x(:,i) + 0.5*dt*k1,opt1); % calculate the slope of n equations
        k3 = f(t(i) + 0.5*dt, x(:,i) + 0.5*dt*k2,opt1);
        k4 = f(t(i) + dt, x(:,i) + dt*k3,opt1);
        x(:,i+1) = x(:,i) + (1/6.0 * k1 + 1/3.0 * k2 + 1/3.0 * k3 + 1/6.0 * k4) * dt ; % 1st row of x (2D array) + r (row vector) X dt
    end
         
end
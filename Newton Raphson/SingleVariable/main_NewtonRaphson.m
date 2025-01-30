% % main_NewtonRaphson
r0 = 100;

root = NewtonRaphson(@funcTrial, r0)
disp(['The root of f(x) is ' num2str(root) '.']);

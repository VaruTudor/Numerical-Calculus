% Solve the equation x = cosx: using Newtons method for: x0 = pi/4
% error = 10^-4 and maximum number of iterations N = 100:

f = @(x) cos(x);
fd = @(x) sin(x) + 1;

x = newton(f, fd,  pi/4, 100, 1e-4);
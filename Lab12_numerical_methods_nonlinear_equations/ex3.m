% Use the secant method with x0 = 1 and x1 = 2 to solve x^3 - x2 - 1
% error = 10^-4 and maximum number of iterations N = 100.

f = @(x) x ^ 3 - x ^ 2 - 1;

x = secant(f, 1, 2, 100, 1e-4);
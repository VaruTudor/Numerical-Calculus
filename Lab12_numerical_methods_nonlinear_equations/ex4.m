% Let f : [1; 2] on R; f(x) = (x-2)^2 - ln x
% Solve the equation f(x)=0; using bisection and false position methods
% error = 10^-4 and maximum number of iterations N = 100.

f = @(x) (x - 2) ^ 2 - log(x);

bisect(f, 1, 2, 1e-4);
false_position(f, 1, 2, 1e-4);
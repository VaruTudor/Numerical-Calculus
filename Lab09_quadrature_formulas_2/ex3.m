% Plot the graph of f:[1; 3] -> R; f(x) = 100/x^2 * sin(10/x). Use an adaptive quadrature algorithm 
% for Simpsons formula to approximate the integral with precision 10^-4. 
% Compare the obtained result with the one obtained applying repeated Simpsons formula for n = 50 and 100.

f = @(x) (100./(x.^2)) .* sin(10./x);

a = 1;
b = 3;
eps = 1e-4;
exact = -1.4260247818;
n1 = 50;
n2 = 100;

fprintf('aq1=%f',adquad(a,b, f, eps,n1));
fprintf('\naq2=%f',adquad(a,b, f, eps,n2));
fprintf('\ns1=%f',simpsons(f, a, b, n1));
fprintf('\ns2=%f\n',simpsons(f,a,b,n2));

fplot(f,[a,b]);
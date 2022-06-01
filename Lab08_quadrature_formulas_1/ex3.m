r = 110; p = 75; 
a = 0; b = 2 * pi;
n1 = 3; n2 = 5;

coef = 60 * r / (r * r - p * p);
f = @(x) sqrt(1 - (p / r) ^ 2 * sin(x));

fprintf('for n1=%f,  result is %f', n1, trapezium(f, a, b, n1));
fprintf('\nfor n2=%f,  result is %f\n', n2, trapezium(f, a, b, n2));
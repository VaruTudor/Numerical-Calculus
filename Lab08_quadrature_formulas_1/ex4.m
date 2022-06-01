a = 1;
b = 2;

f = @(x) x .* log(x);
n = 1;

v = trapezium(f, a, b, n);
while abs(v - 0.636294368858383) > 6e-4
  n = n + 1;
  v = trapezium(f, a, b, n);
end

fprintf('Approximation %f was reached for n=%f\n', v, n);
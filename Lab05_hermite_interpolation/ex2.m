t = [1 2]; % t = node interpolation vector
d = [0 0.6931]; % d = f(x) for values in t
v = [1 0.5]; % v = f'(x) for values in t
x = 1.5;

H = hermitePoly(t,d,v,x);

fprintf('Hermite Interpolation for x=1.5 is %f\n',H);
fprintf('Absolute approximation error is %f\n', abs(log(x) - H));

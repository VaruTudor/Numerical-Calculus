a = 0;
b = pi;
n1 = 10;
n2 = 30;

f = @(x) 1./(4+sin(20.*x));

fprintf('corect result=%f', 0.8111579);
fprintf('\nn1=%f', n1);
fprintf('\nv1=%f', simpsons(f,a,b,n1));
fprintf('\nn2=%f', n2);
fprintf('\nv2=%f\n', simpsons(f,a,b,n2));
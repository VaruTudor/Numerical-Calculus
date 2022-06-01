f = @(x) 2./(1+x.*x);

a = 0;
b = 1;

eps = 1e-4;
actual = pi/2;

k=0;
res = romberg(a,b,f,k);
error = abs(res-actual);
while error > eps
    % divide in smaller intervals such that QTn(f)−QTn−1(f) is reduced
    k = k+1; 
    res = romberg(a,b,f,k);
    error = abs(res-actual);
end

fprintf('k=%f',k);
fprintf('\nres=%f\n',res);


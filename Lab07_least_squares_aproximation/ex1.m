time = 1:7;
temperature = [13,15,20,14,15,13,10];

A = [sum(time.^2), sum(time); sum(time), length(time)];
B = [sum(time.*temperature); sum(temperature)];

% X = linsolve(A,B) solves the matrix equation AX = B, where B is a 
% column vector.
X = linsolve(A,B);
fprintf('phi(x)=%f x + %f',X);

% y = polyval(p,x) evaluates the polynomial p at each point in x. 
% The argument p is a vector of length n+1 whose elements are the 
% coefficients (in descending powers) of an nth-degree polynomial:
fprintf('\nv1=%f', polyval(X, 8));

% p = polyfit(x,y,n) returns the coefficients for a polynomial p(x) of 
% degree n that is a best fit (in a least-squares sense) for the data in y. 
% The coefficients in p are in descending powers, and the length of p is n+1
p = polyfit(time, temperature, 1);
fprintf('\nphi(x)=%f x + %f',p);
fprintf('\nv2=%f', polyval(p, 8));

E_min = sum((temperature-polyval(p,time)).^2);
fprintf('\nE_min=%f',E_min);

plot(time,temperature,'bo');
hold on

xp = 1:0.1:8;
plot(xp, polyval(p, xp),'r-');


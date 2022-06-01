a=0;
b=1;
f=@(x) 2./(1+x.^2);

% q = integral(fun,xmin,xmax) numerically integrates function fun from xmin
% to xmax using global adaptive quadrature and default error tolerances.
%a)
fprintf('Integral = %f', integral(f, a, b));
fprintf('\nIntegral trapezium = %f', (b-a)/2*(f(a)+f(b)));

%b)
fplot(f,[a,b]);
hold on;

% fill(X,Y,C) plots filled polygonal regions as patches with vertices at 
% the (x,y) locations specified by X and Y. To plot one region, specify X 
% and Y as vectors.
fill([0,0,1,1],[0,f(0),f(1),0],'r');

%c)
fprintf('\nIntegral simpsons = %f\n', (b-a)/6*(f(a)+4*f((a+b)/2)+f(b)));
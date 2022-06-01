clear 
% function def
f = @(a) (1 + cos(pi*a)) ./ (1 + a); 

% the 21 points
x = linspace(0, 10, 21); 
% f(x) for each point
y = f(x); 

% another 21 points
xx = linspace(0, 10, 50);

% plot initial function 
plot(xx, f(xx)); 
hold on;

% compute lagrange interpolation considering the points
L = lagrangeInterpolation(x, y, xx); 

% plot the points with red circles so they can be distinguished
plot(xx, L,'c*'); 
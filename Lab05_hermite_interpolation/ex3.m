t = linspace(-5,5,15); % t = node interpolation vector
d=sin(2*t); % d = f(x) for values in t
v=2*cos(2*t); % v = f'(x) for values in t

% generates n points. The spacing between the points is (x2-x1)/(n-1).
x = linspace(-5,5,15); 
H = hermitePoly(t,d,v,x);

hold on 
plot(x, sin(2*x),'*');
plot(x, H);

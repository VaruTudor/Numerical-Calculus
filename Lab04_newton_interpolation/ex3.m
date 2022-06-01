f = @(x)(exp(sin(x)));

x = linspace(0,6,13);

y = f(x);

xx = 0:0.1:6;

plot(x, f(x),'*')

hold on

N = newtonPoly(x, y, xx);

plot(xx, N)
plot(xx, f(xx))
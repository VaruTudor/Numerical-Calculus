% t = 9 minutes, solve Keplers equation f(E) = E - 0.8 * sinE - 2*pi/10=0.
% Type the results obtained applying Newtons method 6 times, starting with E = 1.

f = @(E) E - 0.8*sin(E) - 2*pi/10;
fd = @(E) 1 - 0.8*cos(E);

x = newton(f, fd,  1, 6, 1e-4);
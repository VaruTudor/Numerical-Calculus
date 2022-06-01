x = [0, pi / 2, pi, (3 * pi) / 2, 2 * pi];
y = sin(x);

%a)
% ppval(pp,xq) evaluates the piecewise polynomial pp at the query points xq.
% spline(x,y) returns a piecewise polynomial structure for use by ppval and the spline utility unmkpp.
t1 = spline(x, y);
fprintf('Cubic natural spline for x=pi/4 is %f\n', ppval(t1, pi / 4));

% Use clamped or complete spline interpolation when endpoint slopes are known. To do this, you can specify the values vector y with two extra elements, 
% one at the beginning and one at the end, to define the endpoint slopes.
t2 = spline(x, [1, y, 1]);
fprintf('Cubic clamped spline for x=pi/4 is %f\n', ppval(t2, pi / 4));


%b)
interval = linspace(0,2*pi,100);
disp(sin(pi/4));
hold on;
plot(interval, sin(interval));
plot(interval, ppval(t1, interval));
plot(interval, ppval(t2, interval));
hold off
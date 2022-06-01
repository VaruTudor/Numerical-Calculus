% x will store x values for the points and y - y values. On last position,
% there will be the (x,y) values of the last chosen point (x from x and y found in y)
[x,y] = ginput(5);
fprintf('The chosen points are\n');
disp([x,y])

t = linspace(min(x),max(x),50);

hold on
plot(x, y, '*r');
plot(t, ppval(spline(x,y), t), 'g');
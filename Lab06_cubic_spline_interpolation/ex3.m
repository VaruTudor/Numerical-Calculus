time = [0 3 5 8 13];
distance = [0 225 383 623 993];
speed = [75 77 80 74 72];
t = 10;

fprintf('Cubic clamped spline for t = 10 is %f\n', ppval(spline(time, [75, distance, 72]), t));
disp(ppval(fnder(spline(time, [75, distance, 72]),1),10));
temperature = [0,10,20,30,40,60,80,100];
pressure = [0.0061,0.0123,0.0234,0.0424,0.0738,0.1992,0.4736,1.0133];

degreeFirst = 2;
degreeSecond = 3;
p1 = polyfit(temperature,pressure,degreeFirst);
p2 = polyfit(temperature,pressure,degreeSecond);

fprintf('p1\n'); disp(p1);fprintf('\np2\n'); disp(p2);

v1 = polyval(p1,45); v2 = polyval(p2,45);
fprintf('v1=%f',v1); fprintf('\nv2=%f',v2);

res = 0.095848;
fprintf('\nerror p1 is %f',abs(res - v1));
fprintf('\nerror p2 is %f\n',abs(res - v2));

hold on;
range = [0:0.1:100];
plot(temperature, pressure, 'bo');
plot(range, polyval(p1, range), 'r-');
plot(range, polyval(p2, range), 'g-');


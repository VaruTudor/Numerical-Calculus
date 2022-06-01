x = [64 81 100 121 144 169];
y = [8 9 10 11 12 13];

a = 115;

res = aitkenPoly(x,y,a);
err = abs(res-sqrt(a));

disp(res);
disp(err);
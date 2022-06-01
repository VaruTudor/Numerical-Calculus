a=1.4;
b=2;
c=1;
d=1.5;

f = @(x,y) log(x+2*y);

fprintf('Integral double trapezium = %f\n', double_trapezium(f,a,b,c,d));
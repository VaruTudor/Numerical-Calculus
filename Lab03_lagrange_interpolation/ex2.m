clear

x = [100 121 144];
% x = [100 144 169];
y = [10 11 12];
% y = [10 12 13];
xx = [115];
  
res = lagrangeInterpolation(x,y,xx);

disp('sqrt(115) aproximation: ');
disp(subsref(res,struct('type','()','subs',{{1}})));
clear

x = 1930:10:1980;
y = [123203, 131669, 150697, 179323, 203212, 226505];
xx = [1955,1995];
  
res = lagrangeInterpolation(x,y,xx);
disp('In 1955: ');
disp(subsref(round(res),struct('type','()','subs',{{1}})));
disp('In 1995: ');
disp(subsref(round(res),struct('type','()','subs',{{2}})));

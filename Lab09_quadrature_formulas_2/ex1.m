x = linspace(0,10,20);

f = @(x) exp(-x.^2);

a = 1;
b = 1.5;

% a) Use the rectangle formula to evaluate the integral
fprintf('v1=%f',rectangleFormula(a,b,f));

% b) Plot the graph of the function f and the graph of the rectangle which area approximates the integral, using rectagle (midpoint) formula
hold on
axis([a b f(b) f(a)]) % Change the axis limits so that the x-axis ranges from a to b and the y-axis ranges from f(b) to f(a)
fill([a,a,b,b], [0,f((a+b)/2),f((a+b)/2), 0], [1; 0.5; 0; 0.75]); % Fill the square having corners from left-bottom(anti-clockwise): 
%(a,0), (a,f((a+b)/2)), (b,f((a+b)/2)), (b,0)
fplot(f,[a b]); % Plot f on the interval [a,b]

% c) Use the repeated rectangle formula, for n = 150 and 500; to evaluate the integral (res: 0.1094)
n1 = 150;
n2 = 500;
fprintf('\nv2=%f',repeated_rectangle(a,b,n1,f));
fprintf('\nv3=%f\n',repeated_rectangle(a,b,n2,f));


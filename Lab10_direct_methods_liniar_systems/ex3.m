% Implement Gauss method for solving linear systems, using partial elimination. 
% Solve the following system of equations:

A = [ 1 1 1 1; 2 3 1 5; -1 1 -5 3; 3 1 7 -2 ];
b = [ 10; 31; -2; 18 ];
      
disp(gauss(A, b));
disp(A\b);
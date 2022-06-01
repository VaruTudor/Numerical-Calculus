A = [ 10 7 8 7; 7 5 6 5; 8 6 10 9;7 5 9 10 ];
b = [ 32; 23; 33; 31 ];

% Solve this system and nd its conditioning number. (Use Matlab function cond:)
disp("a)");
x = linsolve(A,b); fprintf('x =\n'), disp(x);
% cond(A) returns the 2-norm condition number for inversion, equal to the ratio of the largest singular value of A to the smallest.
cond_nr = cond(A); fprintf('cond_nr = %f \n', cond_nr);

% Solve the system Ax=b
disp("b)");
b2 = [ 32.1; 22.9; 33.1; 30.9 ];
x2 = linsolve(A,b2); fprintf('x2 =\n'), disp(x2);
      
% Compute the input relative error and the output relative error
inputB = norm(b - b2,2) / norm(b,2); fprintf('Input is %f \n', inputB)
outputB = norm(x - x2,2) / norm(x,2); fprintf('Output is %f \n', outputB)
errB = outputB / inputB; fprintf('Error is %f \n', errB)

% Solve the system Ax=b
disp("c)");
A3 = [ 10 7 8.1 7.2; 7.08 5.04 6 5; 8 5.98 9.89 9; 6.99 4.99 9 9.98 ];
x3 = linsolve(A3,b); fprintf('x3 =\n'), disp(x3);
      
% Compute the input relative error and the output relative error
inputC = norm(A - A3,2) / norm(A,2); fprintf('Input is %f \n', inputC)
outputC = norm(x - x3,2) / norm(x,2); fprintf('Output is %f \n', outputC)
errC = outputC / inputC; fprintf('Error is %f \n', errC)

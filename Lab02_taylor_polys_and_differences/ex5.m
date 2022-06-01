x2=[2 4 6 8];
f2=[4 8 14 16];
disp('Divided diff table:');
disp(constructTable(x2, f2));

% https://www.youtube.com/watch?v=N4unj1nuNlA&ab_channel=ATTIQIQBAL

function div_diff = constructTable(x, f)
  n=length(x);
  div_diff = [f', zeros(n, n-1)]; % append values of f as a column vector at the start, one less column since we already have f
  for k = 2:n  % loop the triangle above the secondary diagonal of the matrix
    for i = 1:n-k+1
      div_diff(i,k) = (div_diff(i+1,k-1)-div_diff(i,k-1))/(x(i+k-1)-x(i)); % recurrence formula
    end
  end
  div_diff = [x', div_diff]; % append the values of x as a column vector 
end

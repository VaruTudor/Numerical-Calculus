function d = dividedDiff(x, f)
  n = length(x);
  d = [f', zeros(n, n-1)]; % append values of f as a column vector at the start, one less column since we already have f
  for k = 2:n  % loop the triangle above the secondary diagonal of the matrix
    for i = 1:n-k+1
      d(i,k) = (d(i+1,k-1)-d(i,k-1))/(x(i+k-1)-x(i)); % recurrence formula
    end
  end

end
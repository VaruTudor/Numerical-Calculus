function ret = secant(f, x0, x1, maxIter, err)
  for n = 1:maxIter
    x = x1 - (x1 - x0) / (f(x1) - f(x0)) * f(x1);
    if abs(x1 - x0) <= err   
      disp(n-1);
      break
    end
    x0 = x1;
    x1 = x;
  end
  ret = x1;
  disp(ret);
end
function ret = newton(f, fd, x0, maxIter, err)
  for n = 1:maxIter
    x1 = x0 - f(x0) / fd(x0);
    if abs(x1 - x0) <= err
      if maxIter~=6
        disp(n);
      end
      break
    end
    x0 = x1;
  end
  if maxIter==6
    disp(maxIter)
  end
  ret = x0;
  disp(ret);
end
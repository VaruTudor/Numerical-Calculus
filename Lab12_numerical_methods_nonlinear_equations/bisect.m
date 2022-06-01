function ret = bisect(f, a, b, err)
  if f(a)*f(b)<0
    for n = 1:1000
      c = (a + b) ./ 2;
      if abs(a - b)/a < err
        disp(n-2);
        break
      end
      if f(a) * f(c) <= 0
        b = c;
      else
        a = c;
      end
    end
    ret = a;
    disp(ret);
   else 
    disp('does not converge')
  end
end
function y = repeated_rectangle(a,b,n,f)
  h = (b-a)/n;
  x1 = a + h/2;
  i = [2:n];
  xi = x1 + (i-1)*h;
  y = h * (f(x1) + sum(f(xi(1:end))));
end
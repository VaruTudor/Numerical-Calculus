function y = trapezium(f, a, b, n)
  h = (b-a)/n;
  xi = a:h:b;
  len = length(xi);
  y = h/2*(f(a)+f(b)+2*sum(f(xi(2:len-1))));
end
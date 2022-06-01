function y = simpsons(f, a, b, n)
   h = (b-a)/n; 
   xi = a:h:b;
   len = length(xi);
   y = h/6*(f(a)+f(b)+4*sum(f((xi(1:len-1)+xi(2:len))/2))+2*sum(f(xi(2:len-1))));
end
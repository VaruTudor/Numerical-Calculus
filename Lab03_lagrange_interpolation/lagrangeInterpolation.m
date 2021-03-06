% Lmf(x)=sum(Ai/(x-xi)*f(xi))/sum(Ai/(x-xi)) i=0,1,..,m

function L = lagrangeInterpolation(x,y,xx)  
    m = length(x);
    P = zeros(1,m);
    N = length(xx);
    L = zeros(1,N);
    for j = 1:N
      s1 = 0;
      s2 = 0;
      for i = 1:m
        P(i) = findAiValue(i,x);
      s1 = s1 + P(i)*y(i)/(xx(j)-x(i));
      s2 = s2 + P(i)/(xx(j)-x(i));
      end
    L(j) = s1/s2;
    end
end
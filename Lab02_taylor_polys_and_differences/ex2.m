% a)
x = -1:0.01:1;

hold on

T1=@(t) cos(1.*acos(t));
plot(x, T1(x))

T2=@(t) cos(2.*acos(t));
plot(x, T2(x))

T3=@(t) cos(3.*acos(t));
plot(x, T3(x))

% b)

hold on;
x = -1:0.01:1;
for n=1:4
  l = chebyshevRec(n,x);
  plot(x,l)
end

% https://www.mathworks.com/matlabcentral/answers/301894-recursion-function-chebyshev-polynomials

function c = chebyshevRec(n, x)
  if n == 0
    c = 1;
  elseif n == 1
    c = x;
  else 
    c = 2 * x .* chebyshevRec(n-1,x) - chebyshevRec(n-2,x);
  end
end
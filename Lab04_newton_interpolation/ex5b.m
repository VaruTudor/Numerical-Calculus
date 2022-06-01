% Neville's Method

% Function parameters
xf = [0 1 2 4 5]; % x values
yf = [sqrt(0) sqrt(1) sqrt(2) sqrt(4) sqrt(5)]; % f(x) values
x = sqrt(3);        % value req

n = length(xf)-1;
xx = zeros(1,n+1);
q = zeros(n+1,n+1);


for i = 0:n
    xx(i+1) = xf(i+1);
    q(i+1,1) = yf(i+1);
end

d = zeros(1,n+1);
d(1) = x-xx(1);
for i = 1:n
    d(i+1) = x-xx(i+1);
    for j = 1:i
        q(i+1,j+1) = (d(i+1)*q(i,j)-d(i-j+1)*q(i+1))/(d(i+1)-d(i-j+1));
    end
end

fprintf('Interpolation Table\n');
for i = 0:n
    fprintf('%f ',xx(i+1));
    for j = 0:i
        fprintf('%f ',q(i+1,j+1));
    end
    fprintf('\n');
end
fprintf('Interpolation table evaluated at x = %f\n',x);


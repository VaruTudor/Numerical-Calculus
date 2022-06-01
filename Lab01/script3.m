polyval([2,-5,0,8],2);
roots([1,-5,-17,21]);
%1
x=0:0.01:1;
f=exp(10*x.*(x-1)).*sin(12*pi*x);
plot(x,f,'r');
f2=3*exp(5*x.^2-1);
plot(x,f2,'b');

%2
a=6;
b=15;
x=0:0.01:10*pi;
f3=(a+b)*cos(x)-b*cos((a/b+1)*x);
f4=(a+b)*sin(x)-b*sin((a/b+1)*x);
plot(f3,f4,'b');

%3
clc
x=0:0.01:2*pi;
f5=cos(x);
f6=sin(x);
f7=cos(2*x);
plot(x,f5,'b');
hold on
plot(x,f6,'r');
plot(x,f7,'g');
hold off

% %4
% 

% 
% %5 toCheck


%4
figure(4)
f4=@(t) t.^3 + sqrt(1-t) .* (t>=-1 & t<=0) + t.^3 - sqrt(1-t) .* (t>0 & t<=1);
fplot(f4)

% or
% x=-1:0.01:1;
% if x<=0
%     plot(x,x.^3+sqrt(1-x),'b');
%     hold on;
% else
%     plot(x,x.^3-sqrt(1-x),'b');
%     hold on;
% end
% hold off

%5
t5=[0 50];
figure(5)
f5=@(t) t/2  .* (mod(t,2)==0) + 3*t+1 .* (mod(t,2)==1);
fplot(f5,t5)

% or
% x=0:1:50;
% if rem(x,2)==0 
%     plot(x,x/2,'b');
%     hold on;
% else
%     plot(x,3*x+1,'b');
%     hold on;
% end
% hold off

%7
figure(7)
x7 = -2:2;
y7 = -4:4;
[X,Y] = meshgrid(x7,y7);
g = exp(-((X-1/2).^2+(Y-1/2).^2));
mesh(X,Y,g);

%6
fraction(100,0)
function [r,init] = fraction(n,init)
    if init~=1
        r=1;
    end
    if n==0
        r=1;
    else
        r=r + 1/(1+fraction(n-1,1));
    end
end



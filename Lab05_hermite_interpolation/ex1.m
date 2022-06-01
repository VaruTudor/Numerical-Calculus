time = [0 3 5 8 13];
distance = [0 225 383 623 993];
speed = [75 77 80 74 72];
t = 10;

fprintf('Hermite Interpolation for t=10 is %f\n', hermitePoly(time,distance,speed,t));

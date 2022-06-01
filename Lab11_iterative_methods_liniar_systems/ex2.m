a = [3 1 1;
    -2 4 0;
    -1 2 -6]; 

b = [12;2;-5]; % sol

err = 1e-5; % error

iter = 100; % max nr or iterations

jacobi(a,b,err,iter);
gauss(a,b,err, iter);
relax(a,b,err, iter, 1.1);
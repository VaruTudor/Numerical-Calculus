a = [3 -1 0 0 0 0;
    -1 3 -1 0 0 0;
    0 -1 3 -1 0 0;
    0 0 -1 3 -1 0;
    0 0 0 -1 3 -1;
    0 0 0 0 -1 3];
    
b = [2;1;1;1;1;2]; % sol

err = 1e-3; % error
iter = 100; % max nr or iterations

jacobi(a,b,err,iter);
gauss(a,b,err, iter);
relax(a,b,err, iter, 1.1);
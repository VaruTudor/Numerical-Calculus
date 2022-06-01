function X = jacobi(A, b, eps, N)
    fprintf('\nJacobi\n');  
    [numRows,~]=size(A);
    x=A\b; disp(x);

    xJ_old=zeros(numRows,1);
    xJ_new=xJ_old;
    numIterations=0;

  while numIterations<=N    
    for i=1:numRows
      aux_suma = A(i,:)*xJ_old;
      xJ_new(i) = 1/A(i,i)*(b(i)-aux_suma+A(i,i)*xJ_old(i)); 
    end
    
    if abs(xJ_new-xJ_old)<eps
      fprintf('Sol:\n');
      X = xJ_new; disp(X);
      fprintf('%d iterations\n',numIterations);
      return
    end
    xJ_old=xJ_new;
    numIterations=numIterations+1;
  end
  return
end
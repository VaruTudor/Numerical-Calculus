function X = gauss(A, b, eps, N)
    fprintf('\nGauss\n');
    [numRows,numCols]=size(A); % row,col
    x=A\b; disp(x);

    xJ_old=zeros(numRows,1);
    xJ_new=xJ_old;
    numIterations=0;
 
  while numIterations<=N   
    for i=1:numRows
      sum1 = 0;
      for j = 1:i-1
        sum1 = sum1 + A(i, j) * xJ_new(j);
      end
      sum2 = 0;
      for j = i+1:numCols
        sum2 = sum2 + A(i, j) * xJ_old(j);
      end
       xJ_new(i) = (b(i) - sum1 - sum2) ./ A(i, i);  
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
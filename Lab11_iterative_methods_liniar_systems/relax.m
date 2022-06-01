function X = relax(A, b, eps, N, omega)
  [numRows, numCols] = size(A);
   numIterations = 0;
   xJ_old = zeros(numRows,1);
   xJ_new = xJ_old;
   fprintf('\nRelax\n');
   while numIterations < N
  
      for i=1:numRows
        suma1 = 0;
        for j = 1:i-1
          suma1 = suma1 + A(i, j) * xJ_new(j);
        end
        suma2 = 0;
        for j = i+1:numCols
          suma2 = suma2 + A(i, j) * xJ_old(j);
        end
         xJ_new(i) = (omega ./ A(i, i)) .* (b(i) - suma1 - suma2) + (1 - omega) .* xJ_old(i);
      end
  
     if abs(xJ_new - xJ_old) < eps
         fprintf('Sol:\n');
         X = xJ_new; disp(X);
         fprintf('%d iterations\n', numIterations);   
        return
      end
   xJ_old=xJ_new;
   numIterations = numIterations + 1;  
   
   end
   disp("error")
   return
end
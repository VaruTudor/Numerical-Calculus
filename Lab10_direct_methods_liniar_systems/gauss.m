function x = gauss(A, b)
    % size(A) returns a row vector whose elements are the lengths of the corresponding dimensions of A. 
    % For example, if A is a 3-by-4 matrix, then size(A) returns the vector [3 4].
    [~, n] = size(A);
  
    for p = 1 : n - 1
        % Find the entry in the p'th column bellow the main diagonal 
        % with the largest absolute value. This entry is called the pivot.
        
        % [M,I] = max() also returns the index into the operating dimension 
        % that corresponds to the maximum value of A. q will hold the
        % column index of max.
        [~, q] = max(abs(A(p:n, p)));
        q = q + p - 1;
    
        % Perform row interchange (if necessary)
        if (q~=p)
            A([p, q], :) = A([q, p], :);
            b([p, q]) = b([q, p]);
        end
   
        for i = p + 1 : n 
            const = A(i,p)/A(p,p); % above main diag / main diag
            b(i) = b(i) - const * b(p);
            A(i, p : n) = A(i, p : n) - const * A(p, p : n);
        end
    end
  
    % Back Substitute
    sol = zeros(size(b));
    for i = n : -1: 1
        sol(i) = (b(i) - A(i, i + 1 : n) * sol(i + 1 : n)) / A(i,i);
    end
    x = sol;
end
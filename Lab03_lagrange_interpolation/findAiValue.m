% Ai = 1/prod(xi-xj); i=0,..,j-1,j+1,..,m

function z = findAiValue(i,x)
      m = length(x);
      p = 1;
    for j = 1:m
      if i~=j
        % only compute the product if i != j
        p = p*(x(i)-x(j));
      end
    end
    z = 1/p;
end
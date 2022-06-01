% Find the conditioning numbers of the Vandermonde matrices V (tk) for the 
% points tk = 1/k; k = 1 to n; for n = 10 to 15.

for k = 10:15
    cond(vander(1 ./ 1:k))
end
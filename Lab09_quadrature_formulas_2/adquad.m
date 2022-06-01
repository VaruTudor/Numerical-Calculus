function y=adquad(a, b, f, err, n)
    % divide and conquer (Course 8, page 9)
    n=1;
    y1 = simpsons(f, a, b, n);
    y2 = simpsons(f, a, (a+b)./2, n) + simpsons(f, (a+b)./2, b, n);
  
    if abs(y1 - y2) < 15 * err
        y = y2;
        return;
    else
        y = adquad(a, (a+b)./2, f, err./2,n) + adquad((a+b)./2, b, f, err./2,n);
    end
end
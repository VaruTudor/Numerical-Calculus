function y = romberg(a, b, f, k)
    % divide [a,b] in 2 equal intervals of size h/2
    % QTk(f) = QTk−1(f)/2 + h2/2^k * ∑f(a + ((2j−1)/2k)*h), k= 1,2,...
    h = b - a;
    if k == 0
        y = h/2*(f(a) + f(b));
    else
        qtPrev = romberg(a, b, f, k-1); % QTk-1(f)
        coef = (2 * [1:2^(k-1)] - 1) ./ 2^k; % ((2j−1)/2k)*h)
        s = sum(f(a + coef .* h)); % ∑f(a + ((2j−1)/2k)*h)
        y = 1/2 * qtPrev + h/2^k*s; % QTk(f)
    end
end


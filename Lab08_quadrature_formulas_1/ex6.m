a = 0;
const = 2./sqrt(pi);

int = @(t) exp(-1 .* (t .^ 2));

erf = @(x, n) const .* simpsons(int, a, x, n);

n1 = 4;
n2 = 10;

% erf(x) returns the Error Function evaluated for each element of x.
correctResult = 0.520499876;
fprintf('corect result=%f', correctResult);
fprintf('\nr1=%f', erf(0.5, n1));
fprintf('\nerr1=%f', abs(erf(0.5, n1)-correctResult));
fprintf('\nr2=%f', erf(0.5, n2));
fprintf('\nerr2=%f\n', abs(erf(0.5, n2)-correctResult));
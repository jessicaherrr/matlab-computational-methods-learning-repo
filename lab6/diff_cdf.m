% Numerical Differentiation

function df = diff_cdf(f, x, h)

df = (f(x + h) - f(x - h)) / (2 * h);

end
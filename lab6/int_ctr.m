% Numerical Integration

function ifab = int_ctr(f, a, b)

h = (b - a) / 3;

ifab = (h / 2) * (f(a) + 2 * f(a + h) + 2 * f(a + 2 * h)+ f(b));

end
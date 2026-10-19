% Numerical Integration: composite trapezoid rule 

function int = comp_trap_rule(f, a, b, n)

    h = (b - a) / n;

    mid = 0;
    for k = 1:(n-1)
        mid = mid + f(a + k * h);
    end

    int = h/2 * (f(a) + 2 * mid + f(b));
    
end
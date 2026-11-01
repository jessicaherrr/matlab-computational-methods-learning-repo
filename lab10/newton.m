% Newton's Method


function vec = newton(f, f_prime, x1, TOL)

    x_next = x1;
    vec = [x1];

    while abs(f(x_next)) > TOL
        
        % Calculate the next approximation
        x_next = x_next - f(x_next) / f_prime(x_next);
        % Store the new approximation
        vec = [vec, x_next];
        
    end

end
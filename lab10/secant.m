% Secant Method


function vec = secant(f, x1, x2, TOL)

    diff = x2 - x1;
    vec = [x1, x2];
    
    while abs(diff) > TOL
        
        % Calculate the next approximation
        x_next = x2 - f(x2) * diff/(f(x2)-f(x1));
        
        % Update the previous and current values
        x1 = x2;
        x2 = x_next;
        
        % Update the difference and store the approximation
        diff = x2 - x1;
        vec = [vec, x_next];
    end

end
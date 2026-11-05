% Poor Person's Logarithm 
% Find the smallest positive integer y such that b^y ≥ x

function y = poor_log(x, b)

    y = 1;
    
    while b^y < x
        y = y + 1;
    end

end
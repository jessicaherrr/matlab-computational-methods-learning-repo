% Euclidean Algorithm

function [GCD, R] = euclid_gcd(A, B)

    R_num = mod(A,B);
    R = [R_num];

    % Continue until the remainder is zero
    while R_num ~= 0
        
        A = B;
        B = R_num;
        R_num = mod(A, B);
        
        % Store each remainder
        R = [R, R_num];
    
    end
    
    % Return the last nonzero remainder
    GCD = B;

end
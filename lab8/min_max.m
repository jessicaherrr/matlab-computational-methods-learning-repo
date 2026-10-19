% Minimum and Maximum
% assume each value of the vector is unique

function [min_val, min_i, max_val, max_i] = min_max(vec)

    min_val = vec(1);
    max_val = vec(1);
    min_i = 1;
    max_i = 1;

    for i = 1:(length(vec)-1)
        
        if vec(i+1) > max_val
            max_val = vec(i+1);
            max_i = i+1;
        
        elseif vec(i+1) < min_val
            min_val = vec(i+1);
            min_i = i+1;
        end       

    end

end
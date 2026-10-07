% Area
% If the scalar is a 0, a square is desired
% If the scalar is 1, a circle is desired 
% Otherwise, neither is desired

function area = calc_areas(decision, a)

    if decision == 0
        area = a^2;
    elseif decision == 1
        area = pi * a^2;
    else
        area = -1;
    end

end
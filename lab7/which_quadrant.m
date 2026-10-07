% Quadrants


function quadrant = which_quadrant(angle)

    if angle >= 0 && angle < (pi/2)
        quadrant = sprintf("%f is in the first quadrant", angle);

    elseif angle < pi
        quadrant = sprintf("%f is in the second quadrant", angle);

    elseif angle < (3*pi/2)
        quadrant = sprintf("%f is in the third quadrant", angle);

    elseif angle < 2*pi
        quadrant = sprintf("%f is in the fourth quadrant", angle);

    end


end
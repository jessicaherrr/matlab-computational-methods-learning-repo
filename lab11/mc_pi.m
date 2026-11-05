% Monte Carlo Approximating π
% A classic method of approximating the value of pi is to relate the
% area inside a circle to the area of a square just encompassing it

function [approx_pi, tot_darts] = mc_pi(num_darts)

    x = rand;
    y = rand;
    darts_inside = 0;
    tot_darts = 0;
    
    while darts_inside < num_darts
        
        tot_darts = tot_darts + 1;
        
        if x^2 + y^2 <= 1
            darts_inside = darts_inside + 1;
        end

    x = rand;
    y = rand;

    end

    approx_pi = 4 * (num_darts / tot_darts);

end
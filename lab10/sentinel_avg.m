% Sentinel-Terminated Average

function [avg] = sentinel_avg(vec)

    index = 1;
    sum = 0;
    
    % Check index bounds and stop at -999
    while index <= length(vec) && vec(index) ~= -999

        sum = sum + vec(index);
        index = index + 1;
    end

    avg = sum / (index - 1);

end
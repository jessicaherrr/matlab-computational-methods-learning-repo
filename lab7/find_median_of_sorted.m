% Median of a list of sorted numbers


function median = find_median_of_sorted(vec)

    if mod(length(vec), 2) == 0
        median = (vec(length(vec)/2) + vec(length(vec)/2 + 1)) / 2;

    else
        median = vec((length(vec) + 1) / 2);
    end

end
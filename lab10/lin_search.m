% Linear Search


function loc = lin_search(vec, num)

    index = 1;
    
    % Search until the number is found or the end is reached
    while index <= length(vec) && vec(index) ~= num
        index = index + 1;
    end
    
    % Return -1 if the number is not found
    if index > length(vec)
        loc = -1;
    else
        loc = index;
    end

end
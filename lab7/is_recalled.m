% Car recall
% Spontaneously combust is caused by the cigarette lighter in cars 
% with model numbers 12, 16, or any model in the range of 20 through 26 (inclusive).

function recalled = is_recalled(num)

    if num == 12 || num == 16 || (num >= 20 && num <= 26)
        recalled = "Your car has been recalled";
    
    else
        recalled = "Your car has not been recalled";
    end

end
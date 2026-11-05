% Longest Constant Sublist
% Find the longest sublist of consecutive equal numbers
% Return its ending index and length

function [last, leng] = const_sub_list(vec)

    index = 1;
    leng = 1;
    last = 1;
    current_leng = 1;

    while index < length(vec)

        if vec(index+1) == vec(index)
            current_leng = current_leng + 1;
        else
            current_leng = 1;
        end

        index = index + 1;

        if current_leng > leng
            leng = current_leng;
            last = index;
        end

    end

end

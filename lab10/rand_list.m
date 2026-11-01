% Random List (1-10)

function [list] = rand_list(m, n)

    list = [];
    num_m = 0;
    num_n = 0;
    
    % Continue until either limit is reached
    while num_m < m && num_n < n
        
        randi_num = randi([1,10]);
        
        list = [list, randi_num];
        
        num_n = num_n + 1;

        if randi_num >= 6
            num_m = num_m + 1;
        end    

    end

end
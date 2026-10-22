% Sample Mean and Sample Standard Deviation

function [mean, std_dev] = mean_std_dev(vec_data)

    sum_x = 0;
    
    for i = 1:length(vec_data)        
        sum_x = sum_x + vec_data(i);
    end

    mean = sum_x / length(vec_data);

    sum_center = 0;

    for j = 1:length(vec_data)
        sum_center = sum_center + (vec_data(j)-mean)^2;
    end
    
    std_dev = sqrt(sum_center / (length(vec_data) - 1));

end
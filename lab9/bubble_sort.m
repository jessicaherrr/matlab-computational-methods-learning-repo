% Bubble Sort

function data_mat = bubble_sort(vec_unsorted)

    n = length(vec_unsorted);

    data_mat = zeros(n,n);

    data_mat(1,:) = vec_unsorted;
    
    % Outer loop: one pass per iteration
    for i = 1:n-1
        
        % Inner loop: compare adjacent elements in the unsorted portion
        for j = 1:n-i % Exclude the last i elements, which are already sorted
            
            % Compare adjacent elements: j and j+1
            % Swap if the left element is larger than the right
            if vec_unsorted(j) > vec_unsorted(j+1)
                temp = vec_unsorted(j);
                vec_unsorted(j) = vec_unsorted(j+1);
                vec_unsorted(j+1) = temp;
            end
        
        end
        
        data_mat(i+1,:) = vec_unsorted;

    end


end
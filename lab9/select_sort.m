% Selection Sort

function data_mat = select_sort(vec_unsorted)
    
    n = length(vec_unsorted);

    data_mat = zeros(n,n);

    data_mat(1,:) = vec_unsorted;
    
    % Place the smallest unsorted element in each pass
    for i = 1:n-1
        
        min_idx = i;
        
        % Search the remaining unsorted elements for the minimum
        for j = i+1:n
            if vec_unsorted(j) < vec_unsorted(min_idx)
                min_idx = j;
            end
        end
    
    % Swap the minimum element with the element at position i
    temp = vec_unsorted(min_idx)
    vec_unsorted(min_idx) = vec_unsorted(i);
    vec_unsorted(i) = temp;

    data_mat(i+1,:) = vec_unsorted;

    end
    

end
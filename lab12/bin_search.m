% Binary Search
% Searching in a sorted list for a given value 
% that is based on dividing the problem in half at each step


function [found_at, indices] = bin_search(vec_data, num)

    first = 1;
    last = length(vec_data);

    [found_at, indices] = bin_search_inner(vec_data, num, first, last);

end


function [found_at, indices] = bin_search_inner(vec_data, num, first, last)
    
    mid = floor((first + last) / 2);

    if vec_data(mid) == num
        % Base case: value found
        found_at = mid;
        indices = mid;

    elseif vec_data(mid) < num
        % Search the right half
        first = mid + 1;

        [found_at, next_indices] = bin_search_inner(vec_data, num, first, last);
        % Add current index before the returned indices
        indices = [mid, next_indices];
    else
        % Search the left half
        last = mid - 1;

        [found_at, next_indices] = bin_search_inner(vec_data, num, first, last);
        % Add current index before the returned indices
        indices = [mid, next_indices];
    end


end



%%% Binary Search Example: bin_search(1:30, 12)


%%%% Going Down: Recursive Calls

% Call 1: first = 1, last = 30
% mid = 15
% 15 > 12 -> else -> last = 14
% Save mid = 15 and wait for Call 2

    % Call 2: first = 1, last = 14
    % mid = 7
    % 7 < 12 -> elseif -> first = 8
    % Save mid = 7 and wait for Call 3
    
        % Call 3: first = 8, last = 14
        % mid = 11
        % 11 < 12 -> elseif -> first = 12
        % Save mid = 11 and wait for Call 4
            
            % Call 4: first = 12, last = 14
            % mid = 13
            % 13 > 12 -> else -> last = 12
            % Save mid = 13 and wait for Call 5
                
                % Call 5: first = 12, last = 12
                % mid = 12
                % 12 == 12 -> if -> Value found!
                % found_at = 12
                % indices = 12
                % Base case: no more recursive calls


%%%% Coming Back: Return Values

                % Call 5:
                % Return found_at = 12, indices = [12]
                % Go back to Call 4
            
            % Call 4:
            % Resume after the recursive call
            % Saved mid = 13
            % Receive found_at = 12 from Call 5
            % Receive next_indices = [12] from Call 5
            % indices = [mid, next_indices]
            % indices = [13, 12]
            % Return found_at = 12, indices = [13, 12]
            % Go back to Call 3
        
        % Call 3:
        % Resume after the recursive call
        % Saved mid = 11
        % Receive found_at = 12 from Call 4
        % Receive next_indices = [13, 12] from Call 4
        % indices = [mid, next_indices]
        % indices = [11, 13, 12]
        % Return found_at = 12, indices = [11, 13, 12]
        % Go back to Call 2
    
    % Call 2:
    % Resume after the recursive call
    % Saved mid = 7
    % Receive found_at = 12 from Call 3
    % Receive next_indices = [11, 13, 12] from Call 3
    % indices = [mid, next_indices]
    % indices = [7, 11, 13, 12]
    % Return found_at = 12, indices = [7, 11, 13, 12]
    % Go back to Call 1

% Call 1:
% Resume after the recursive call
% Saved mid = 15
% Receive found_at = 12 from Call 2
% Receive next_indices = [7, 11, 13, 12] from Call 2
% indices = [mid, next_indices]
% indices = [15, 7, 11, 13, 12]
% Return both outputs to the main function


%%%% Final Output

% found_at = 12
% indices = [15, 7, 11, 13, 12]
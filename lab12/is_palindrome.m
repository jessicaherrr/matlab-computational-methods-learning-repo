% Palindrome
% A string that reads the same forwards and backwards，like 'abcdedcba' and 'abccba'

function [ret_val] = is_palindrome(vec_char)
    
    % Display the current string
    fprintf('%s\n\n', vec_char);
    
    % Base case: 0 or 1 character
    if length(vec_char) <= 1
        ret_val = true;

    % Check the first and last characters
    elseif vec_char(1) ~= vec_char(end)
        ret_val = false;
        
    else
        % Remove the first and last characters
        vec_char = vec_char(2:end-1);
        % Recursive call
        [ret_val] = is_palindrome(vec_char);
    end

end
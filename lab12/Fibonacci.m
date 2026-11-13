% Fibonacci With Info

function [F_n, n_calls] = Fibonacci(n)

    % Count the current function call
    n_calls = 1;
    
    % Display the current Fibonacci number
    fprintf('Computing F_%d\n', n);
    
    if n < 1 || n ~= floor(n)
    
        % Invalid input
        F_n = -1;
    
    elseif n == 1
    
        % Base case: F_1 = 0
        F_n = 0;
    
    elseif n == 2
    
        % Base case: F_2 = 1
        F_n = 1;
    
    else
    
        % First, compute F_(n-1)
        % Wait for this call to finish before moving on
        [F_1, calls_1] = Fibonacci(n-1);
    
        % Next, compute F_(n-2)
        % This call may repeat previous calculations
        [F_2, calls_2] = Fibonacci(n-2);
    
        % Add the two returned Fibonacci values
        F_n = F_1 + F_2;
    
        % Count this call and all calls from both branches
        n_calls = n_calls + calls_1 + calls_2;
    
    end

end



% Fibonacci(5)
% n_calls = 1

% Step 1: Fibonacci(4)
%   Fibonacci(3)
%       Fibonacci(2) -> returns 1, 1 call
%       Fibonacci(1) -> returns 0, 1 call
%   Fibonacci(3) -> returns 1, 3 calls
%
%   Fibonacci(2) -> returns 1, 1 call
%
% Fibonacci(4) -> returns 2, 5 calls


% Step 2: Fibonacci(3) again
%   Fibonacci(2) -> returns 1, 1 call
%   Fibonacci(1) -> returns 0, 1 call
%
% Fibonacci(3) -> returns 1, 3 calls


% Step 3: Back to Fibonacci(5)
% F_1 = 2, calls_1 = 5
% F_2 = 1, calls_2 = 3
%
% F_n = 2 + 1 = 3
% n_calls = 1 + 5 + 3 = 9
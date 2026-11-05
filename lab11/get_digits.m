% Digits Again
% Write a function that takes in a single integer
% and produces an array of all of its individual digits 
% (begin with the least significant digit)
% along with a boolean which flags if the number is negative

function [digits, sign] = get_digits(int)

    if int < 0
        sign = true;
    else
        sign = false;
    end

    int = abs(int);
    digits = [];

    while int > 0
        digits = [digits, mod(int, 10)];
        int = floor(int / 10);
    end

    if isempty(digits)
        digits = 0;
    end

end
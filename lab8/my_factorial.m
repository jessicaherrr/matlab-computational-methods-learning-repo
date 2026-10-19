% Factorial: define the factorial of any number 
% not captured by the above formula to be -1 

function n_fact = my_factorial(n)

    n_fact = 1;

    if n >= 0 && mod(n, 1)==0

        for i = n:-1:1
            n_fact = n_fact * i;
        end

    else
        n_fact = -1;

    end

end
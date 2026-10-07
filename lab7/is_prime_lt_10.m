% Primes under 10


function prime = is_prime_lt_10(num)

    if num == 2 || num == 3 || num == 5 || num == 7
        prime = sprintf("%d is prime", num);
    else
        prime = sprintf("%d is not prime", num);
    end

end
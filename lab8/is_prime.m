% Prime Testing

function is_p = is_prime(n)

    if n >= 2 && mod(n,1) == 0
        
        is_p = true;

        for i = 2:(n-1)

            if mod(n,i) == 0
                is_p = false;
            end
            
        end

    else
        is_p = false;
    end

end
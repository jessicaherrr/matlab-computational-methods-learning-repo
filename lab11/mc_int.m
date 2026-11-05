% Monte Carlo Integration
% Approximating the average value of f 
% by sampling the value of f(x) at a large number of randomly chosen points
% in [a,b] and computing the sample mean of these values.

function approx_int = mc_int(f, a, b, N)

    sum = 0;

    for i = 1:N;
        x = a + (b-a)*rand;
        sum = sum + f(x);
    end
    
    approx_int = (b - a) / N * sum ;

end
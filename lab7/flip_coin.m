% Coin flip
% Flip a coin by producing a single random integer of value 0 or 1 using randi
% If it is 0, then the coin is "heads" and if it is 1, then it is "tails".

function coin_string = flip_coin()

    num = randi([0,1]);
    
    if num == 0
        coin_string = 'heads';
    else
        coin_string = 'tails';
    end

end
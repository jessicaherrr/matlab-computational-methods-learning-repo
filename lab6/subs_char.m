% Substitution Cipher -- permutation for a single character

function cchar = subs_char(char_1, perm)

index = double(char_1) - double('a') + 1;

new_index = perm(index);

cchar = char(new_index + double('a') - 1);

end

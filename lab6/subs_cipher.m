% Substitution Cipher -- permutation for a length 3 string of lower case letters

function ctext = subs_cipher(str, perm)

indexes = double(str) - double('a') + 1;

new_indexes = perm(indexes);

ctext = char(new_indexes + double('a') - 1);

end
% Caesar Cipher

function ciphertext = mod_caesar(str, key)

ciphertext = char(mod(double(str) - double('A') + key, 26) + double('A'));

end
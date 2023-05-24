cipher_text = readline()

change_count = 0

for i = eachindex(cipher_text)
    global change_count += (
        i % 3 == 1 && cipher_text[i] !== 'P'
        || i % 3 == 2 && cipher_text[i] !== 'E'
        || i % 3 == 0 && cipher_text[i] !== 'R'
    ) ? 1 : 0
end

println(change_count)
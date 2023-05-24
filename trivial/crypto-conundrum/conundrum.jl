cipher_text = readline()

f(acc, i) = acc + (
    i % 3 === 1 && cipher_text[i] !== 'P'
    || i % 3 == 2 && cipher_text[i] !== 'E'
    || i % 3 == 0 && cipher_text[i] !== 'R'
)

reduce(f, eachindex(cipher_text), init=0) |> println
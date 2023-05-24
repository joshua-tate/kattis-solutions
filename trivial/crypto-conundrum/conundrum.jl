cipher_text = readline()

f(acc, (i, v)) = acc + (
    i % 3 === 1 && v !== 'P'
    || i % 3 === 2 && v !== 'E'
    || i % 3 === 0 && v !== 'R'
)

reduce(f, enumerate(cipher_text), init=0) |> println
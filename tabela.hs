vendas :: Int -> Int
vendas 0 = 12
vendas 1 = 14
vendas 2 = 16
vendas 3 = 7

foo :: Int -> Int -> Float
foo a b = (fromIntegral a) / (fromIntegral b)

add_espacos :: Int -> String
add_espacos 0 = ""
add_espacos n = " " ++ add_espacos(n-1)

paraDireita :: Int -> String -> String
paraDireita 0 _ = ""
paraDireita n str = add_espacos n ++ str

imprimeSemanas :: Int -> Int
imprimeSemanas 0 = 0
imprimeSemanas n = n

imprimeTotal :: Int -> Int
imprimeTotal 0 = vendas 0
imprimeTotal n = vendas n + imprimeTotal(n-1)

imprimeMedia :: Int -> Float
imprimeMedia 0 = 0.0
imprimeMedia n = imprimeTotal n `foo` n
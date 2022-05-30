-- Compreensão de listas
par :: Int -> Bool
par x = mod x 2 == 0

lista = [x | x <- [1 .. 10], par x, x > 5]

listaDeTuplas = [(x,y) | x <- [1 .. 5], y <- [6 .. 10]]

{- Construa uma função que, dado 3 valores, verifique se
os mesmos podem ser os lados de um triangulo.
Se for possível formar o triangulo, retorne um tupla-2
com o tipo de triangulo formado
(com relação às arestas) e o perímetro do mesmo. -}
triangulo :: (Int, Int, Int) -> (String, Int)
triangulo (x, y, z)
  | ehTriangulo(x, y ,z) && (x == y) && (y == z) = ("Triangulo Equilatero", (x+y+z))
  | ehTriangulo(x, y, z) && ((x == y) || (x == z) || (y == z)) = ("Triangulo Isosceles", (x+y+z))
  | ehTriangulo(x, y, z) && (x /= y) && (y /= z) = ("Triangulo Escaleno", (x+y+z))
  | otherwise = ("Nao eh um Traingulo!", 0)

ehTriangulo :: (Int, Int, Int) -> Bool
ehTriangulo (x , y, z)
  | x + y > z && z > abs(x - y) = True
  | x + z > y && y > abs(x - z) = True
  | y + z > x && x > abs(y - z) = True
  | otherwise  = False

{- Faça uma função que calcule a soma de todos os números ímpares de
1 à N, utilizando recursão de cauda. -}
somaImpar :: Int -> Int
somaImpar n = somaImparAux n 0

somaImparAux :: Int -> Int -> Int
somaImparAux x y
  | x == 1 = x+y
  | numImpar x = somaImparAux (x-2) (y+x)
-- |odd x = somaImparAux (x-2) (y+x)
  | otherwise = somaImparAux (x-1) y

numImpar :: Int -> Bool
numImpar n
  | mod n 2 /= 0 = True
  | otherwise = False

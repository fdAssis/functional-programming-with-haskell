 maximoQuadrad :: Int -> Int -> Int
maximoQuadrad x y
  | quadx > quady = quadx
  | otherwise = quady
    where
      quadx = quad x
      quady = quad y
      quad :: Int -> Int
      quad n = n * n
--------------------------------------------------------------------------------

maximasOcorrencias :: Int -> Int -> Int -> (Int, Int)
maximasOcorrencias n m p = (maxs, quantosIguais)
  where
    maxs = maximoDeTres n m p
    quantosIguais = quantosIguaisValor maxs n m p

    maximoDeTres :: Int -> Int -> Int -> Int
    maximoDeTres a b c = maximo ( maximo (a, b), c)

    quantosIguaisValor :: Int -> Int -> Int -> Int -> Int
    quantosIguaisValor valor n m p = ehN + ehM + ehP
      where
        ehN = if n == valor then 1 else 0
        ehM = if m == valor then 1 else 0
        ehP = if p == valor then 1 else 0

    maximo :: (Int, Int) -> Int
    maximo (x,y)
      | x > y = x
      | otherwise = y
--------------------------------------------------------------------------------

fun :: Int -> Int
fun x = case x of
  0 -> 50
  1 -> 100
  2 -> 150
  3 -> 200
  _ -> 500
--------------------------------------------------------------------------------

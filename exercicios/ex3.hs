{-
Defina uma função que dada uma lista de inteiros, retorna o número de elementos de valor
superior a um número n qualquer.
-}
retornaSup :: Int -> [Int] -> Int
retornaSup n lista = auxSup n 0 lista

auxSup :: Int -> Int -> [Int] -> Int
auxSup _ soma [] = soma
auxSup n soma (cabeca:calda)
  | n < cabeca = auxSup n (soma+1) calda
  | otherwise = auxSup n soma calda
----------------------------------------------------------------------------------------
{-
Defina uma função que dada uma lista de inteiros, retorna outra lista que contém apenas de
elementos de valor superior a um número n qualquer.
-}
retornaListaSup :: Int -> [Int] -> [Int]
--retornaListaSup n lista = [x | x <- lista, x > n]
retornaListaSup n lista = auxLisSup n [] lista

auxLisSup :: Int -> [Int] -> [Int] -> [Int]
auxLisSup _ listaMaior [] = listaMaior
auxLisSup n listaMaior (cabeca:calda)
  | n < cabeca = auxLisSup n (cabeca:listaMaior) calda
  | otherwise = auxLisSup n listaMaior calda
-------------------------------------------------------------------------------------------

{- Escreva uma função que recebe duas listas de inteiros e produz uma lista de listas. Cada uma
corresponde à multiplicação de um elemento da primeira lista por todos os elementos da
segunda.
-}

mult_lista :: [Int] -> [Int] ->[[Int]]
mult_lista lista1 lista2 = [[x * y]| x <- lista1, y <- lista2]

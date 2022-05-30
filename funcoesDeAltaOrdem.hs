import Data.Char
--------------------------------------------------------------------------------------------
multiplasFuncoes :: (Eq t) => [(t->t)] -> [t] -> [t]
multiplasFuncoes [] _ = []
multiplasFuncoes (cab:cauda) lista = map cab lista ++ multiplasFuncoes cauda lista

multiplasFuncoes' :: (Eq t) => [(t->t)] -> [t] -> [t]
multiplasFuncoes' listaFun lista = [y | x <- listaFun, y <- map x lista]
--------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------
aplicacaoExclusiva :: (t -> Bool) -> (t -> t -> t) -> [t] -> [t] -> [t]
aplicacaoExclusiva fun1 fun2 list1 list2 = [fun2 x y | x <- list1Ret, y <- list2Ret]
    where 
       list1Ret = filter fun1 list1
       list2Ret = filter fun1 list2
---------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------
contaIguais :: (Eq t) => [t] -> Int
contaIguais [] = 0
contaIguais (x:xs)
    | cont /= 0 = 1 + contaIguais (drop (cont) xs)
    | otherwise = contaIguais xs
        where cont = contNext x xs

contNext:: (Eq t) => t -> [t] -> Int
contNext _ [] = 0
contNext c (x:xs)
    |c == x = 1 + (contNext c xs)
    |otherwise = 0 

contaVizinhosIguais :: (Eq t) => [t] -> Int
contaVizinhosIguais lista = length[x | x <- [0 .. ((length lista) - 2)], lista!!x == lista!!(x+1)]   
-----------------------------------------------------------------------------------------------------------------   
    
contador :: (t -> Bool) -> [t] -> Int
contador funcao lista = length (filter funcao lista)     

selecionaExecuta :: (t -> Bool) -> (t -> t) -> [t] -> [t]
selecionaExecuta fun1 fun2 list1 = map fun2 list1Ret
    where 
       list1Ret = filter fun1 list1
------------------------------------------------------------------------------------------------------------------       

dublic :: [t] -> [t]
dublic lista = concat (map (replicate 2) lista)

dropN :: (Eq t) => [t] -> Int -> [t]
dropN lista delete = [y| x <- [delete, delete*2 .. length lista], y <- lista, p <- [0 .. length lista], lista!!x /= p]
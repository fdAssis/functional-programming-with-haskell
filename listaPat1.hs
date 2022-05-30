-- Descobrindo o tamanho da lista
size_list :: [t] -> Int
size_list [] = 0
size_list (x:xs) = 1 + size_list xs

-- Função que verifica se duas listas são iguais
comp_listas :: [Int] -> [Int] -> Bool
comp_listas [] [] = True
comp_listas [] _  = False
comp_listas _ []  = False
comp_listas (a:b) (c:d)
  | (a == c) = comp_listas b d
  | otherwise     = False

-- Funcão que recebe uma lista e retorna o inveso dessa listas
inv_lista :: [t] -> [t]
inv_lista [] = []
inv_lista lista = inv_aux lista []

inv_aux :: [t] -> [t] -> [t]
inv_aux [] listaInversa = listaInversa
inv_aux (cabeca:calda) listaInversa = inv_aux calda listaInversa ++ [cabeca]

-- Funcão que recebe uma lista e retorna o inveso dessa listas 2.0
inv_lista2 :: [t] -> [t]
inv_lista2 [] = []
inv_lista2 (cabeca:calda) = inv_lista2 calda ++ [cabeca]

-- Função que verifica se um elemento pertence a lista
pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (cabeca:calda) numero
  | cabeca == numero = True
  | otherwise = pertence calda numero

-- Funçao que verifica o maior elemento de uma listas
maior :: [Int] -> Int
maior [x] = x
maior (cabeca:calda)
  | cabeca > maior calda = cabeca
  | otherwise = maior calda

-- Funçao que verifica se todos os elementos de uma lista são pares
todosPares :: [Int] -> Bool
todosPares [] = True
todosPares (cabeca : calda)
  | cabeca `mod` 2 /= 0 = False
  | otherwise = todosPares calda

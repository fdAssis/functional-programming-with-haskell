type Pessoa = (String, Int, Float, Char)
pess :: Int -> Pessoa
pess x
	|x==1 = ("Rosa", 27, 1.66,'F')
	|x==2 = ("João", 26, 1.85,'M')
	|x==3 = ("Maria", 67, 1.55,'F')
	|x==4 = ("Jose", 85, 1.78, 'M')
	|x==5 = ("Paulo", 24, 1.93, 'M')
	|x==6 = ("Clara", 38, 1.70,'F')
	|x==7 = ("Bob", 12, 1.45, 'M')
	|x==8 = ("Rosana", 31, 1.58,'F')
	|x==9 = ("Daniel", 75, 1.74, 'M')
	|x==10 = ("Jocileide", 85, 1.69,'F')
	|otherwise = ("Acabou!",0, 0.0, 'x')

maiorIdade :: Int -> Int
maiorIdade n = maior n (n-1)

maior :: Int -> Int -> Int
maior x y
  | y == 0 = x
  | idade1 == idade2 = x
  | idade1 > idade2 = maior x (y-1)
  | otherwise = maior y (y-1)
    where
      idade1 = idade (pess x)
      idade2 = idade (pess y)

idadeMedia :: Int -> Float
idadeMedia n = fromIntegral((somaIdade n 0)) / fromIntegral(n)

somaIdade :: Int -> Int -> Int
somaIdade nPessoa soma
  | nPessoa == 0 = soma
  | otherwise = somaIdade (nPessoa - 1) (soma + numIdade)
    where
      numIdade = idade (pess nPessoa)

idade :: Pessoa -> Int
idade(_,x,_,_) = x

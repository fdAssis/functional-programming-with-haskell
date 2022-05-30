vendas :: Int -> Int
vendas 0 = 12
vendas 1 = 4
vendas 2 = 0
vendas 3 = 3

imprimeTab :: Int -> IO()
imprimeTab n = putStr(cabecalho ++ imprimeSemanas n ++ imprimeTotal)

cabecalho :: String
cabecalho = "___________________\n Semana | Vendas \n___________________\n"

imprimeSemanas :: Int -> String
imprimeSemanas 0 = imprimeSemana 0
imprimeSemanas n = imprimeSemanas (n-1) ++ imprimeSemana n

imprimeSemana :: Int -> String
imprimeSemana n = "   "++ (show n)++"\t|  "++ show (vendas n)++" \n"

imprimeTotal :: String
imprimeTotal = "___________________\n Total  |  "++show ((vendas 0)+ 
    (vendas 1)+(vendas 2)+(vendas 3))++" \n___________________\n"
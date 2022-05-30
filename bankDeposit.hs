import Data.Char
data Movimento = Credito Float | Debito Float
data Data = D Int Int Int -- Dia Mes Ano
data Extrato = Ext Float [(Data,String,Movimento)]

--EXEMPLO PARA TESTES
ext1 :: Extrato
ext1 = Ext 300 [(D 5 4 2010,"DEPOSITO",Credito 2000),(D 10 8 2010,"COMPRA",Debito 37.5),(D 1 9 2010,"LEV",Debito 60),(D 7 1 2011,"JUROS",Credito 100),(D 22 1 2011,"ANUIDADE",Debito 8)]

creDeb :: Extrato -> (Float,Float)
creDeb (Ext x []) = (0,0)
creDeb (Ext x ((_,_, Debito y):t)) = let (cred,deb) = creDeb (Ext x t) in (cred, deb+y)
creDeb (Ext x ((_,_, Credito y):t)) = let (cred,deb) = creDeb (Ext x t) in (cred+y, deb)

saldo :: Extrato -> Float
saldo extrato@(Ext saldoInicial movimentos) = let (credito,debito) = creDeb extrato
                                            in saldoInicial - (credito+debito)
instance Show Extrato where
show (Ext st list) = "Saldo anterior: " ++ (show st) ++ "\n----------------------------------------------\nData\t\tDescricao\tCredito\tDebito\n----------------------------------------------\n" ++ (concat (map auxMovimento list)) ++ "----------------------------------------------\nSaldo actual: " ++ (show ( saldo (Ext st list))) where
auxMovimento (dt,strg,Credito x) = if (length strg) < 7 then (show dt) ++ "\t" ++ strg ++ "\t\t" ++ (show x) ++ "\n" else (show dt) ++ "\t" ++ strg ++ "\t" ++ (show x) ++ "\n"
auxMovimento (dt,strg,Debito x) = if (length strg) < 7 then (show dt) ++ "\t" ++ strg ++ "\t\t\t" ++ (show x) ++ "\n" else (show dt) ++ "\t" ++ strg ++ "\t\t" ++ (show x) ++ "\n"
No entanto, ao compilar e executar no terminal, o que aparece é o seguinte:

"Saldo anterior: 300.0\n----------------------------------------------\nData\t\tDescricao\tCredito\tDebito\n----------------------------------------------\n2010/4/5\tDEPOSITO\t2000.0\n2010/8/10\tCOMPRA\t\t\t37.5\n2010/9/1\tLEV\t\t\t60.0\n2011/1/7\tJUROS\t\t100.0\n2011/1/22\tANUIDADE\t\t8.0\n----------------------------------------------\nSaldo actual: -1905.5"
Ou seja, não me está a reconhecer os '\n' e os '\t'. É necessário instalar alguma pacote para funcionar como quero?

Editado 18 de Dezembro de 2015 por thoga31 
Tags code + GeSHi
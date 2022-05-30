listaFib::Int->[Int]
listaFib n
   |n==1 = [1]
   |n==2 = [1,1]
   |otherwise = listaFib (n-1)++[prox]
      where
         prox=sum(take 2 (reverse(listaFib (n-1))))

listaFib2::Int->[Int]
listaFib2 n
   |n==1 = [1]
   |n==2 = [1,1]
   |otherwise = listaFib2 (n-1)++[fib n]

fib::Int->Int
fib n
   |n==1 = 1
   |n==2 = 1
   |otherwise = fib(n-1)+fib(n-2)


conv "0000" = "0"
conv "0001" = "1"
conv "0010" = "2"
conv "0011" = "3"
conv "0100" = "4"
conv "0101" = "5"
conv "0110" = "6"
conv "0111" = "7"
conv "1000" = "8"
conv "1001" = "9"
conv "1010" = "A"
conv "1011" = "B"
conv "1100" = "C"
conv "1101" = "D"
conv "1110" = "E"
conv "1111" = "F"

bin2hex::String->String
bin2hex s
   |s=="" = ""
   |mod (length s) 4 /=0 = bin2hex((replicate (4-(mod (length s) 4)) '0') ++ s)
   |otherwise = conv (take 4 s) ++ bin2hex(drop 4 s)



hanoi::Int->Int->Int->Int->[String]
hanoi q orig aux dest
   |q==0 = []
   |q==1 = [show(orig)++"->"++show(dest)]
   |otherwise = ch1++[show(orig)++"->"++show(dest)]++ch2
     where
       ch1 = hanoi (q-1) orig dest aux
       ch2 = hanoi (q-1) aux orig dest

func :: (Int, Int) -> (Int, Int) -> (Int, Int)
func (a,b) (c,d) = (a+c, b+d)

nomes :: (String, String, String)
nomes = ("Marcos", "Francisco", "Haskell")

-- Obtendo valores de uma tupla
selec_primeiro (x, _, _) = x
selc_segundo (_, y, _)   = y
selec_terceiro (_, _, z) = z

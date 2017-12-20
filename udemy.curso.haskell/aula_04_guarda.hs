{- Guarda é a estrutura condicional em que pode ser adicionada várias condições  -}
guarda x | (x == 0) = "Guarda_00"
		 | (x == 1) = "Guarda_01"
		 | otherwise = "Guarda_nao_encontrado"
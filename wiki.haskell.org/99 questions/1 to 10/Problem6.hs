{-
	Verifica se a lista original é igual a mesma lista invertida
	"Não consegui usar o definidor de tipo ::"
-}
isPalindrome [] = True
isPalindrome x = (x == inverte x)

inverte [] = []
inverte (x:xs) = (inverte xs)++[x]
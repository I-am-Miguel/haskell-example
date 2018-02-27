module Problem2 where
{-
	Função deve mostrar o penultimo valor de uma lista
	Para isso 1° Inverte a lista atual, após retorna o elemento da posição 1	
-}
inverte :: [t] -> [t]

inverte [] = []
inverte (x:xs) = inverte xs ++[x]

myButLast :: [t] -> t
myButLast  x = inverte x !! 1
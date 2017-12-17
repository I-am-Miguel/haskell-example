{-Função que retorna o tamanho da lista-}
lista_length [] = 0
lista_length (x:xs) = 1 + lista_length(xs)


{-
Função que verifica se 2 listas são iguais
	Caso não seja especificado o tipo a lista_compare irá comparar qualquer 2 Lista
	(assume-se o tipo genérico [t])
-}
lista_compare :: [Int] -> [Int] -> Bool

lista_compare [] [] = True
lista_compare [] _ = False
lista_compare _ [] = False
lista_compare (x:xs) (x2:xs2) | (x == x2) = lista_compare xs xs2
							  | otherwise = False


{-Função que inverte os valores de uma lista genérica-}
lista_inverso :: [t] -> [t]

lista_inverso [] = []
lista_inverso (x:xs) = lista_inverso(xs)++[x]


{-Função que verifica se um determinado elemento está na lista-}
lista_pertence :: [Int] -> Int -> Bool

lista_pertence [] _ = False
lista_pertence (x:xs) n | (x == n) = True
						| otherwise = lista_pertence xs n 

{-Função que retorna o maior elemento da lista-}
lista_maior[x] = x
lista_maior (x:xs) | (x > lista_maior xs ) = x
				   | otherwise = lista_maior xs


{-Função que verifica se a lista possui apenas numeros pares-}
lista_par :: [Int] -> Bool

lista_par [] = True
lista_par (x:xs) | (x `mod` 2 /= 0) = False
				 | otherwise = lista_par xs 

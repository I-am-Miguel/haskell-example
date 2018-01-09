{-Função que retorna o tamanho da lista-}
--Inicio 01
lista_length [] = 0
lista_length (x:xs) = 1 + lista_length(xs)
--Fim 01


{-
Função que verifica se 2 listas são iguais
	Caso não seja especificado o tipo a lista_compare irá comparar qualquer 2 Lista
	(assume-se o tipo genérico [t])
-}
--Inicio 02
lista_compare :: [Int] -> [Int] -> Bool

lista_compare [] [] = True
lista_compare [] _ = False
lista_compare _ [] = False
lista_compare (x:xs) (x2:xs2) | (x == x2) = lista_compare xs xs2
							  | otherwise = False
--Fim 02


{-Função que inverte os valores de uma lista genérica-}
--Inicio 03
lista_inverso :: [t] -> [t]

lista_inverso [] = []
lista_inverso (x:xs) = lista_inverso(xs)++[x]
--Fim 03

{-Função que verifica se um determinado elemento está na lista-}
--Inicio 04
lista_pertence :: [Int] -> Int -> Bool

lista_pertence [] _ = False
lista_pertence (x:xs) n | (x == n) = True
						| otherwise = lista_pertence xs n 
--Fim 04

{-Função que retorna o maior elemento da lista-}
--Inicio 05
lista_maior[x] = x
lista_maior (x:xs) | (x > lista_maior xs ) = x
				   | otherwise = lista_maior xs
--Fim 05

{-Função que verifica se a lista possui apenas numeros pares-}
--Inicio 06
lista_par :: [Int] -> Bool

lista_par [] = True
lista_par (x:xs) | (x `mod` 2 /= 0) = False
				 | otherwise = lista_par xs 
--Fim 06

{-Função que simula a ZIP da prelude-}
--Inicio 07
lista_zip:: [t] -> [t] -> [(t,t)]

lista_zip [] [] = []
lista_zip (x:xs) (y:ys) = [(x,y)] ++ lista_zip xs ys
--Fim 07

{-Pack de funções que auxiliam a Função que ordena uma lista-}
--Inicio 08
-- Retorna o menor item da lista
lista_menor [x] = x
lista_menor (x:xs) | (x < lista_menor xs)  = x
			 	   | otherwise = lista_menor xs

-- Retorna a lista sem o menor item
lista_remove_menor [] = []
lista_remove_menor (x:xs) | (x == lista_menor (x:xs)) = xs
						  | otherwise = x:lista_remove_menor (xs)

-- Recebe uma lista vazia e a populada e retorna a Lista(antiga vazia) ordenada (com elementos da populada)
lista_ordena' lista_ordenada []  = lista_ordenada
lista_ordena' lista_ordenada (x:xs) = lista_ordena'( lista_ordenada++[lista_menor(x:xs)]) (lista_remove_menor(x:xs))

-- Chama a função lista_ordena' com a lista vazia e a que será ordenada
lista_ordena [x] = [x]
lista_ordena lista_a_ordenar = lista_ordena' [] lista_a_ordenar
--Fim 08
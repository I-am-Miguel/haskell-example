{-Função pack descrita no Problem9-}
pack :: [Char] -> [[Char]]

pack [] = []
pack (x:[]) = [[x]]

pack (x:xs) = [x:[a | a <- xs, xs /= [], a == x]] ++ pack [a | a <- xs, a /=x]

{-
	Função auxiliar de processamento recursivo da encode
-}
encode' :: [[Char]] -> [(Int, Char)]

encode' (x:[]) = [(length x,head x)]
encode' (x:xs) = [(length x, head x)] ++ encode' xs

encode x = encode'(pack x)
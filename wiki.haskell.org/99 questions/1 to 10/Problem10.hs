module Problem10 where
import Problem9

{-
	Função auxiliar de processamento recursivo da encode
-}
encode' :: [[Char]] -> [(Int, Char)]

encode' (x:[]) = [(length x,head x)]
encode' (x:xs) = [(length x, head x)] ++ encode' xs

encode x = encode'(pack x)
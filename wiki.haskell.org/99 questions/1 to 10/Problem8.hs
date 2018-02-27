module Problem8 where
{-
	Comprimir as Strings tornando-as em um conjunto(sem repetições)
-}
compress:: [Char] -> [Char]

compress [] = []
compress (x:[]) = [x]

compress (x:xs) = [x] ++ compress [a | a <- xs, a/= x]
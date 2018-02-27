module Problem9 where

pack :: [Char] -> [[Char]]

pack [] = []
pack (x:[]) = [[x]]

pack (x:xs) = [x:[a | a <- xs, xs /= [], a == x]] ++ pack [a | a <- xs, a /=x]


pack' :: [Char] -> [[Char]]
pack' [] = []
pack' [x] = [[x]]
pack' (x:xs) | (x == (xs !! 0)) = [[x , (xs !! 0)]]++ pack' xs
             | otherwise = pack' [x] ++ pack' xs
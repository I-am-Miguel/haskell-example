module Problem9 where

pack x = pack'(agrupa x)

pack' :: [[Char]] -> [[Char]]
pack' [] = []
pack' (x:(y:ys)) | (x==y) = [x++y] ++ pack' ys
                | otherwise = [x] ++ pack' (y:ys)

agrupa :: [Char] -> [[Char]]
agrupa [] = []
agrupa (x:(y:ys)) | (x == y) = [[x , y]] ++ agrupa (ys)
             | otherwise = [[x]] ++ agrupa (y:ys)

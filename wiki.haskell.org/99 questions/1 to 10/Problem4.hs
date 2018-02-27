module Problem4 where

myLength :: [t] -> Int

myLength [] = 0
myLength (x:xs) = (myLength xs) + 1
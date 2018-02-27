module Problem1 where

myLast :: [t] -> t

myLast [x] = x
myLast (_:xs) = myLast xs 

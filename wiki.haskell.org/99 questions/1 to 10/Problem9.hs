{-Função de agrupamento de elementos para melhor visualizar a lista-}
agrupa [] = []
agrupa (x:[]) = [x]
agrupa (x:xs) =  ([x] ++ (agrupa[a | a <- xs, a==x] ++ agrupa [a | a <- xs, a/=x]))



{-Função pack descrita no Problem9-}
pack :: [Char] -> [[Char]]

pack [] = []
pack (x:[]) = [[x]]

pack (x:xs) = [x:[a | a <- xs, xs /= [], a == x]] ++ pack [a | a <- xs, a /=x]

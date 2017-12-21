{-concatMap = http://zvon.org/other/haskell/Outputprelude/concatMap_f.html-}
data NestedList t = Elem t | List [NestedList t]

my_flatten :: NestedList a -> [t]
my_flatten (Elem x) = [x]
my_flatten (List x) = concatMap my_flatten x
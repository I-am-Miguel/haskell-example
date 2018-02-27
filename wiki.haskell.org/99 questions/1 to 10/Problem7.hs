module Problem7 where
{-concatMap = http://zvon.org/other/haskell/Outputprelude/concatMap_f.html-}
data NestedList t = Elem t | List [NestedList t]

flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x
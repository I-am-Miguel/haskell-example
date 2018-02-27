module Problem3 where
{-
	Função deve mostrar o n-ésimo elemento da lista
	"o valor n deve ser considerado na forma de contagem iniciando com 1"
-}
elementAt :: [t] -> Int -> t

elementAt x n = x !! (n-1)

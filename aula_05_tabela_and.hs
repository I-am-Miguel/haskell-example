{-Cabeçalho da função, informa os parâmetros(bool, bool) e o retorno -> Bool-}
t_and :: Bool -> Bool -> Bool

{-Tabela Verdade And-}{-Variáveis anônimas, são representadas por buracos "_"-}
t_and False _ = False
t_and _ False = False
t_and True True = True
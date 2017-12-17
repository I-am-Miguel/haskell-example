{--Pode ser usado a tupla fixa "nomes", ou passada por parâmetro outra tupla-}
nomes :: (String, String, String)
nomes = ("nome01", "nome02", "nome03")

primeiro(x, _, _) = x
segundo(_, y, _) = y
terceiro(_, _, z) = z
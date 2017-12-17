{-Definindo tipos básicos a serem usados -}
type Nome = String
type Idade = Int
type Sexo = String

{--Encapsulando os tipos básicos na classe-}
type Pessoa = (Nome, Idade, Sexo)

{-Criando objeto da classe Pessoa-}
pessoa :: Pessoa

{-Especificando atributos-}
pessoa = ("Miguel",21,"Masculino")


{-Gets-}
getNome :: Pessoa -> Nome
getNome (n, i, s) = n

getIdade :: Pessoa -> Idade
getIdade (n, i, s) = i

getSexo :: Pessoa -> Sexo
getSexo (n, i, s) = s
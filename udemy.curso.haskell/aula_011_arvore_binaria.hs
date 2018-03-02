module ArvoreBinaria where

data ArvBin = Nulo | No Int ArvBin ArvBin

arvEx = (No 4 
              (No 2 
                    (No 1 Nulo Nulo) (No 3 Nulo Nulo))
              (No 6
                    (No 5 Nulo Nulo) (No 7 
                                          Nulo (No 8 Nulo Nulo)
                                      )     
              )
        )

em_ordem :: ArvBin -> [Int]

em_ordem Nulo = []
em_ordem (No num esq dir) = (em_ordem esq) ++ [num] ++ (em_ordem dir)
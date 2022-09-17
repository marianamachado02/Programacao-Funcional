{-
Em python, o homem do vídeo faria do tipo:
gameBoard = 
    [[1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]]

E ele criaria um main que alternaria entre X e O e iria para aqueles espaços

Acontece que, em Haskell, não dá para manipular o tabuleiro de jogo, porque isso seria manipular variáveis, o que não é
possível em Haskell

Ele vai fazer do tipo
[Peça1, Peça2, ..., Peça9]
-}

data Piece
    = Open Int 
    | Player Char
    deriving (Show, Eq) -- 

main :: IO()
main = undefined

-- Escreva uma função de IO a ser utilizada num sistema de registo de leituras de contadores do serviço municipal de águas.
-- Deve perguntar ao utilizador o número do contador e o valor da contagem.
-- Deve guardar esses dados num ficheiro.

module SitemadeRegisto where

    import Data.Char
    import System.IO

    main = do
        putStrLn "Indique o número do contador:"
        contador <- getLine
        putStrLn "Indique o valor da contagem:"
        contagem <- getLine

        contents <- readFile "SistemaRegisto.txt"
        writeFile "SistemaRegisto.txt" (contador ++ contagem)



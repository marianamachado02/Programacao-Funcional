-- Prova de Frequência nº2
-- ano letivo de 2021-2022

-- Considere o teorema de Pitágoras e a definição de triangulo retângulo, 
-- em que o quadrado da hipotenusa é igual à soma dos quadrados dos catetos 
-- c^2 = a^2 + b^2.

-- Considere que dispõe da função isTriRetangle, que recebe uma tripla 
-- de números e devolve True se os valores da tripla representarem os lados 
-- de um triângulo retângulo, senão devolve False.

import System.IO ()
import Control.Monad


isTriRetangle :: (Float, Float, Float) -> Bool
isTriRetangle (a,b,c )
    | c^2 == a^2 + b^2 = True
    | otherwise = False

-- 1. Escreva a assinatura e defina a função readTriRetangle, que:
-- a) pergunta ao utilizador e lê do teclado o valor dos lados de um triângulo;
-- b) responde e imprime no ecrã se o triângulo é retângulo ou não.

readTriRetangle :: IO ()
readTriRetangle = do
    putStr "Lado 1: "
    l1 <- getLine
    putStr "Lado 2: "
    l2 <- getLine
    putStr "Lado 3: "
    l3 <- getLine
    if isTriRetangle (read l1, read l2, read l3) 
        then putStrLn "É Triangulo retangulo"
        else putStrLn "Não é Triangulo retangulo"



-- 2. Escreva a assinatura e a definição da função fileAddTriRetangle, que:
-- a) Recebe como parâmetro um triângulo, representado por uma tripla de números;
-- b) Se o triângulo for retângulo, adiciona-o ao ficheiro “triretangulos.txt”

fileAddTriRetangle :: (Float, Float, Float) -> IO ()
fileAddTriRetangle (a,b,c ) = do
    if isTriRetangle (a,b,c) then
        appendFile "triretangulos.txt" (show a ++ " " ++ show b ++ " " ++ show c ++ "\n")
        else return () 

-- versão alternativa
fileAddTriRetangle2 :: (Float, Float, Float) -> IO ()
fileAddTriRetangle2 (a,b,c ) = do
    when (isTriRetangle (a,b,c)) $ do appendFile "triretangulos.txt" (show a ++ " " ++ show b ++ " " ++ show c ++ "\n")
 
-- 3. Reveja a função fileAddTriRetangle, garantindo que adiciona ao ficheiro
--    “triretangulos.txt” apenas triângulos que ainda não existem no ficheiro.
fileAddTriRetangle3 :: (Float, Float, Float) -> IO ()
fileAddTriRetangle3 (a,b,c ) = do
    triUnique <- triNotInFile (a,b,c) "triretangulos.txt"
    if isTriRetangle (a,b,c) && triUnique then
        appendFile "triretangulos.txt" (show a ++ " " ++ show b ++ " " ++ show c ++ "\n")
        else return () 
   

-- verifica se o triangulo (a,b,c) existe no ficheiro
triNotInFile :: (Float, Float, Float) -> String -> IO Bool
triNotInFile (a,b,c) fileName = do
    contents <- readFile fileName
    let tris = lines contents
        isIn = (show a ++ " " ++ show b ++ " " ++ show c) `elem` tris
    return (not isIn)


-- 4. Escreva a assinatura e a definição da função lstTriRetangle, que recebe uma 
--    lista de triplas de números e devolve uma lista com as triplas que representam 
--    triângulos retângulo. Use a função filter.
lstTriRetangle :: [(Float, Float, Float)] -> [(Float, Float, Float)]
lstTriRetangle = filter isTriRetangle 

-- 5. Defina os tipos sinónimos triangle e edge, para representar as entidades 
--    triângulo e cateto, conforme os tipos de dados usados nas questões anteriores.

--    Defina a função lstTriRetangleArea que recebe uma lista de triângulos retângulos 
--    e devolve uma lista com a área de cada triângulo. Use a função map.

type Edge = Float
type Triangle = (Edge, Edge, Edge)

lstTriRetangleArea :: [Triangle] -> [Float]
lstTriRetangleArea = map (\(a,b,c) -> a*b/2) 

-- versão alternativa
type Area = Float
lstTriRetangleArea2 :: [Triangle] -> [Area]
lstTriRetangleArea2 = map areaTriRet

areaTriRet :: Triangle -> Area
areaTriRet (a,b,_) = a*b/2

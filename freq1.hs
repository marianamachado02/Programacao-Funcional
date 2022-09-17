module Freq1 where
    triRetangle :: (Double, Double, Double) -> Bool 
    triRetangle (a,b,c) 
        | a^2 == b^2 + c^2 = True 
        | b^2 == a^2 + c^2 = True 
        | c^2 == a^2 + b^2 = True 
        | otherwise = False 
    
    triRetangleLst [(Double, Double, Double)] -> [(Double, Double, Double)]
    triRetangleLst ((a,b,c) :xs)
        | triRetangle (a,b,c) = (a,b,c): triRetangleLst xs 
        | otherwise = triRetanglesLst xs 
    
    -- resolução alternativa usando listas por compreensão
    -- triRetangleLst :: [(Double, Double, Double)] -> [(Double, Double, Double)]
    -- triRetangleLst l = [(a,b,c)|(a,b,c)<-l, triRetangle (a,b,c)]


-- Exercicio 2
    distance :: (Double, Double) -> (Double, Double) -> Double 
    distance (a,b) (c,d) = sqrt((d-b)^2+(c-a)^2)

    track [(Double, Double)] -> Double 
    track [] = 0
    track [(_,_)] = 0
    track ((a,b):(c,d):xs) = distance (a,b) (c,d) + track ((c,d):xs)
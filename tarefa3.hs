-- Defina uma função que receba dois pares de inteiros e retorne um par de inteiros, sendo o 
-- primeiro elemento do par resultado a soma dos primeiros elementos dos pares de entrada, 
-- e o segundo elemento do par, o produto dos segundos elementos dos pares de entrada.

module Tarefa3 where
    pares :: (Int, Int) -> (Int, Int) -> (Int, Int)
    pares (a,b) (c,d) = ( a+c , b+d )
-- Crie um módulo com o nome Conversoes num ficheiro com o nome Conversoes.hs. Defina as 
-- seguintes funções, todas elas recebendo um argumento e devolvendo o valor correspondente: 
-- fahrenheitToCelsius, celsiusToFahrenheit, feetToMeters, metersToFeet, milesToKilometers, e
-- kilometersToMiles.. Carregue este modulo no GHCi e teste as funções definidas.

module Conversao(fahrenheitToCelsius, celsiusToFahrenheit, feetToMeters, metersToFeet, milesToKilometers, kilometersToMiles) where

    -- Conversão de Temperatura

    fahrenheitToCelsius ::  Float -> Float
    fahrenheitToCelsius degreesF = (degreesF - 32) * 5 / 9

    celsiusToFahrenheit :: Float -> Float 
    celsiusToFahrenheit degreesC = degreesC * 9 / 5 + 32

    -- Conversão de distâncias

    feetToMeters :: Float -> Float 
    feetToMeters feet = feet*0.3048

    metersToFeet :: Float -> Float 
    metersToFeet meter = meter/0.3048

    milesToKilometers :: Float -> Float 
    milesToKilometers miles = miles*1.609344

    kilometersToMiles :: Float -> Float 
    kilometersToMiles km = km/1.609344


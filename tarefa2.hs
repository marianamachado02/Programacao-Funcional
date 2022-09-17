module EX2 where
    opp :: (Int,(Int,Int)) -> Int
    opp z = if ((fst z) == 1)
        then (fst (snd z)) + (snd (snd z))
        else if ((fst z) == 2)
        then (fst (snd z)) - (snd (snd z))
        else 0


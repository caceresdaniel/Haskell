isDivBy5 :: Int -> Bool
isDivBy5 x  = x `mod` 5 == 0

everyOther :: String -> [Bool]
everyOther [] = [True]
everyOther (x:[]) = [( x `elem` ['a' .. 'f'])]
everyOther (x:y:xs) = ( x `elem` ['a' .. 'f']) : everyOther xs


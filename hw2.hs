-- 1)
isDivBy5 :: Int -> Bool
isDivBy5 x  = x `mod` 5 == 0

-- 2)
everyOther :: String -> [Bool]
everyOther [] = [True]
everyOther (x:[]) = [( x `elem` ['a' .. 'f'])]
everyOther (x:y:xs) = ( x `elem` ['a' .. 'f']) : everyOther xs

-- 3)
zipMapAdd :: [Int] -> [Int] -> [Int]
zipMapAdd x y = mapZipAdd (zip x y)

mapZipAdd :: [(Int, Int)] -> [Int]
mapZipAdd [] = []
mapZipAdd ((x, y):rest) = x+y : mapZipAdd rest

-- 4)
mapString :: [String] -> [String]
mapString [] = []


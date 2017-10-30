search :: Int -> [Int] -> Int
search _ [] = -1
search a (x:y:xs)
      | null xs == True = -1 
      | a == y = -1
      | a == x = y
      | otherwise = a `search` (y:xs)

search' :: Int -> [Int] -> Int
search' _ [] = -1
search' a (x:y:xs)
      | null xs == True = -1
      | a == x = -1
      | a == y = x 
      | otherwise = search' a (y:xs)

digitSum :: Int -> Int
digitSum 0 = 0
digitSum x = (x `mod` 10) + digitSum (x `div` 10)
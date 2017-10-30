-- 4 pts) Write a recursive method to compute m(i) = 1 + 1/2 + 1/3, ... + 1/i, where i is an Int

-- Note: you can use fromIntegral for operations involving both ints and floats for any of the problems.

-- 4 pts) Write a recursive method to compute m(i) = 1/2, + 2/3, ... + i/(i + 1), where i is an Int

-- 4 pts) Using recursion, implement a method that removes the max element from a list of Ints, or one of the max elements if there is more than one. E.g., [1,2,3,4,4] should become [1,2,3,4]

-- 8 pts) Implement a sorting algorithm that finds the max, puts it at the end of the list, then recursively sorts the remainder of the list. You can create/use any helper functions you need, 
-- provide that you wrote it yourself, or it's built into Haskell.

series :: Int -> Float
series x
     | x == 1 = 1
     | otherwise = 1/(fromIntegral x) + series(x-1)

series' :: Int -> Float
series' x
      | x == 1 = 1/2
      | otherwise = (fromIntegral x) / (fromIntegral x + 1) + series' (x - 1)

removeMax :: [Int] -> [Int]
removeMax (x:y:[])
         | x < y = [x]
removeMax (x:y:xs)
         | x == maximum(x:y:xs) = (y:xs)
         | otherwise = x : removeMax (y:xs)

lastSort :: [Int] -> [Int]
lastSort xs = lastSortHelper xs 0

lastSortHelper :: [Int] -> Int -> [Int]
lastSortHelper xs n
        | n == (length xs) = xs
        | otherwise = lastSortHelper (lastSort' xs) (n + 1)

lastSort' :: [Int] -> [Int]
lastSort' (x:[]) = [x]
lastSort' (x:y:xs)
        | x >= y = [y] ++ lastSort (x:xs)
        | x <= y = [x] ++ lastSort (y:xs)
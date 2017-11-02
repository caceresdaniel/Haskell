Import Data.list
-- 1. 2pts) Create a function, using partial application of functions, that sees if a single Int is divisible by 5. It takes in an Int and returns a Bool. 
-- 	(edited from original to be a bit easier)
isDivBy5 :: Int -> Bool
isDivBy5 x  = x `mod` 5 == 0

-- 2. 2pts) Write a function that checks if every other letter of a string is between 'a' and 'f' 
-- 	(the remaining letters don't matter, start with the first letter in the string, skip the second, and so on). 
-- 	The function takes in a String and returns a Bool. Use partial application at least once. Empty string returns True.
-- 	 (edited to specify what empty string returns, some clarification added).
everyOther :: String -> [Bool]
everyOther [] = [True]
everyOther (x:[]) = [( x `elem` ['a' .. 'f'])]
everyOther (x:y:xs) = ( x `elem` ['a' .. 'f']) : everyOther xs

-- 3. 4pts) Write a function that takes two lists, zips them, then maps the result to a list of sums of the numbers in the tuples.
--  E.g., [1, 2, 3] [4, 5, 6] gets zipped to [(1, 4), (2, 5), (3,6)], then gets mapped to [5, 7, 9].
zipMapAdd :: [Int] -> [Int] -> [Int]
zipMapAdd x y = map (\(x,y) ->  x + y) $ zip x y

-- 4. 4pts) Write a function that maps a list of Strings that may have multiple words to Strings with only the first word left. E.g. 
-- ["Today is Thursday", "Banquet", "unreal games"] becomes ["Today", "Banquet", "unreal"].
mapString :: [String] -> [String]
mapString (xs) = map (\ x -> takeWhile (/=' ') x ) xs


-- 5. 4pts) Write a function that takes a two dimensional matrix of Strings and transforms all empty strings to "0". 
-- twodString :: [[String]] -> [[String]]
-- twodString xs = map (\x -> if x == "" then "0" else x) xs

-- 6. 4pts) Write a function that converts [a, b, c, d, . . . ] to [(a,b), (c, d), . . .], where a, b, c, and d can be any type
--  (though they are all the same type as each other). That is, they can all be Strings, Ints, Chars, and so on.
joinIt :: [a] -> [(a, a)]
joinIt [] = []
joinIt [x] = []
joinIt (x:y:xs) = (x, y) : joinIt xs

-- 7. 2pts) Using the previous function, convert each tuple to a product of its two elements, using foldl and a lambda expression.
foldLambda :: [a] -> [a]
foldLambda = foldl (\  -> x + acc ) []

-- 8. 1pt) Using scanl, write a function that takes a list of Ints and make a list of cumulative sums. 
cumul :: [Int] -> [Int]
cumul (x:xs) = scanl (+) x xs

-- 9. 1pt) Consider this function:
-- applyThrice :: (Int -> Int) -> Int -> Int
-- applyThrice f x = f (f (f x))
-- Use $ to make the second line more readable
applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x =  f $ f $ f x


-- 10. 2pts) Convert:
-- isLowerCase :: Char -> Bool
-- isLowerCase x = x `elem` ['a' .. 'z']
-- to point free style
isLower :: Char -> Bool
isLower = (`elem` ['a' .. 'z'])

-- 11. 4pts) Sort a list of Strings by length of the first word in the strings (if the strings have more than one word)


-- 12. 5pts) Pack repeats in a list of Chars into separate lists, resulting in a sorted list of lists

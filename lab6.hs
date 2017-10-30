
add :: Int -> Int -> Int
add x y = x + y 

add' :: Int -> Int
add' = add 10

isLowerCase :: Char -> Bool
isLowerCase = (`elem` ['a' .. 'z'])

applyThree :: (a -> a) -> a -> a 
applyThree f x = f ( f ( f x ))

transform :: (a -> a) -> [a] -> [a]
transform _ [] = []
transform f (x:[]) = [f x]
transform f (x:y:xs) = f  x : y : transform f xs

zipWith' :: (a -> b -> c -> d) -> [a] -> [b] -> [c] -> [d]
zipWith' _ [] _ _ = []  
zipWith' _ _ [] _ = []
zipWith' _ _ _ [] = []  
zipWith' f (x:xs) (y:ys) (z:zs) = f x y z : zipWith' f xs ys zs

func :: (Int -> Int) -> Int -> (Int, Int)
func f x = (x, f x)

mapFunc :: (Int -> Int) -> [Int] -> [(Int, Int)]
mapFunc _ [] = []
mapFunc f (x:xs) = (x , f x) : mapFunc f xs
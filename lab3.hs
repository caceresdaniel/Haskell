
-- 2 pts) Create three functions of your choice starting with a type declaration

-- 1 pt) Create a function that takes in a typeclass of Num and returns a typeclass of Num (include type declaration) that adds the two numbers together.

-- 2 pts) Create a function (with type declaration) that takes a String representation of a floating point number (e.g., "3.455") and adds it to an Float (e.g., 3.4). 

-- 2 pts) Create a function (with type declaration) that takes Ints, and if the number is 1,2, or 3 output the strings "Once", "Twice", "Thrice"; if it is greater than 3, print "Don't know how to say that in English."

-- 2 pts) Create 4 functions (with type declaration) that take quadruples of any type. The first function returns the first element, the second the second element, and so on. 

-- 2 pts) Create a recursive function with type declaration that takes in an Int and an exponent (also Int) and returns the first number raised to the second.

-- 2 pts) Using list pattern matching, create a function that multiplies the first three elements of a list  of Ints (or all the elements, if the list has 3 or less elements, 0 if the list is empty) added together. Include type declaration.


subtraction :: Int -> Int -> Int
subtraction a b = a - b

division :: Float -> Float -> Float
division a b = a / b

multiplication :: Double -> Double -> Double
multiplication a b = a * b

addition :: Int -> Int -> Int
addition a b = a + b

stringFloatAddition :: String -> Float -> Float
stringFloatAddition a b = (read a) + b

weirdFunction :: Int -> String
weirdFunction 1 = "Once"
weirdFunction 2 = "Twice"
weirdFunction 3 = "Thrice"
weirdFunction x = "Don't know how to say that in English."

quadFirst :: (a, b, c, d) -> a
quadFirst (a, _, _, _) = a

quadSecond :: (a, b, c, d) -> b
quadSecond (_, b, _, _) = b

quadThird :: (a, b, c, d) -> c
quadThird  (_, _, c, _) = c

quadFourth :: (a, b, c, d) -> d
quadFourth (_, _, _, d) = d

-- why does this work
power :: (Integral a, Integral b) => a -> b -> a
power a 0 = 1
power a b = a * power a (b-1)

-- but this does not
-- power :: (Int a, Int b) => a -> b -> a
-- power a 0 = 1
-- power a b = a * power a (b-1)

listMultAdd :: (Integral a) => [a] -> a
listMultAdd [] = 0
listMultAdd (x:[]) = x
listMultAdd (x:y:[]) = x * y
listMultAdd (x:y:z:_) = x * y * z


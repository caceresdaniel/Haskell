generation ::  Int -> String
generation year
  | year >= 1995 = "Generation Z"
  | year >= 1980 = "Millenial"
  | year >= 1965 = "Generation X"
  | year >= 1945 = "Baby Boomer"
  | year >= 1933 = "The Silent Generation"
  | otherwise = "The Greatest Generation"

generation2 :: Int -> String
generation2 userYear
  | birthyear >= 1995 = "Generation Z"
  | birthyear >= 1980 = "Millenial"
  | birthyear >= 1965 = "Generation X"
  | birthyear >= 1945 = "Baby Boomer"
  | birthyear >= 1933 = "The Silent Generation"
  | otherwise = "The Greatest Generation"
  where birthyear = 2017 - userYear

hypotenuse :: (RealFloat a) => [(a, a)] -> [a]
hypotenuse xs = [hypo x y | (x, y) <- xs]
  where hypo x y = sqrt(x^2 + y^2)

float :: (RealFloat a) => [a] -> [a]
float xs = [flo | a <- xs, let flo = pi * a]

listMult :: [Int] -> Int
listMult xs = case xs of [] -> 0
                         (x:[]) -> x
                         (x:y:[]) -> x * y
                         (x:y:z:[]) -> x * y * z
main = do 
     putStrLn "Please input weight in pounds"
     weight <- getLine
     let weightn = (read weight :: Float)
     putStrLn "Please input height in inches"
     height <- getLine
     let heightn = (read height :: Float)
     putStrLn $ convAndTell weightn heightn

convAndTell :: Float -> Float -> String
convAndTell pnd inch
    | (pnd * 0.45359237) / (inch * 0.0254) ^ 2 <= 18.5 = "You're underweight"
    | (pnd * 0.45359237) / (inch * 0.0254) ^ 2 <= 25.0 = "You're supposedly normal"
    | (pnd * 0.45359237) / (inch * 0.0254) ^ 2 <= 30.0 = "You're overweight"
    | otherwise = "You're obese"

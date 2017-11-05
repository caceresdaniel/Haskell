main = do
    putStrLn "Enter a phrase to convert to leetcode"
    phrase <- getLine
    putStrLn "Your phrase with leet code is: " ++ converter

converter :: String -> String
converter xs = [if x == 'o' 
                   then '0' 
                   else if x == 'e' 
                           then '3' 
                           else if x == 'a' 
                                   then '@' 
                                   else x | x <- xs]
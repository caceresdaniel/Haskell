main = do
    putStrLn "Enter a phrase to convert to leetcode"
    phrase <- getLine
    putStrLn $ converter phrase

converter :: String -> String
converter xs = [if x == 'o' 
                   then '0' 
                   else if x == 'e' 
                           then '3' 
                           else if x == 'a' 
                                   then '@' 
                                   else if x == 'l'
                                        then '1'
                                        else x | x <- xs]
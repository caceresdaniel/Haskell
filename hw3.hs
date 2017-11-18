import System.Environment

data Student = Student {
firstname :: String, 
lastName :: String,
major :: String,
age :: Int} deriving (Show)

data Tree studs = EmptyTree | Node studs (Tree studs) (Tree studs) deriving (Show, Read, Eq)

dispatch :: [(String, [String] -> IO ())]
dispatch = [ ("readF", readF)]

main = do
    (command:args) <- getArgs
    let (Just action) = lookup command dispatch
    action args

readF :: [String] -> IO ()
readF [fileName] = do
    contents <- readFile fileName
    let cells = splitter (==',') contents
    putStr $ unlines cells

splitter :: (Char -> Bool) -> String -> [String]
splitter f x =  case dropWhile f x of
            "" -> []
            x' -> w : splitter f xs
                    where (w, xs) = break f x'
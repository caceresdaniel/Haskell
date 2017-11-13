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
    let studentInfo = lines contents
        cells = zipWith (\n line -> show n ++ " - " ++ line) [0..] studentInfo
    putStr $ unlines cells

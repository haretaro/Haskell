getNumbers :: IO [Integer]
getNumbers = do
  x <- getLine
  if x == ""
    then
      return []
    else do
      list <- getNumbers
      let newElement = read x :: Integer
      return (newElement:list)

main = do
  inputs <- getNumbers
  (putStrLn . unwords . map show) inputs

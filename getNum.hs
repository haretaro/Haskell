import Control.Exception
getNumbers = do
    flip catch handler $ do
      x <- readLn :: IO Integer
      list <- getNumbers
      return (x : list)
  where
    handler = (\e -> return [])


main = do
  inputs <- getNumbers
  (putStrLn . unwords . map show) inputs

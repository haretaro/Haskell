getLines = do
  x <- getLine
  if x == ""
    then
      return[]
    else do
      xs <- getLines
      return (x:xs)

main = do
  lines <- getLines
  (putStrLn . unwords)lines

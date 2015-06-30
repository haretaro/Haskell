import Data.List
main = do
  let fib = 1:1:zipWith (+) fib (tail fib)
  (putStrLn . intercalate "\n" . map show . take 100) fib

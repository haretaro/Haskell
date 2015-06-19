fizzbuzz :: Integer -> String
fizzbuzz n
	| mod n 15 == 0 = "FizzBuzz"
	| mod n 3 == 0 = "Fizz"
	| mod n 5 == 0 = "Buzz"
	| otherwise = show n

main =	(putStrLn . unwords . map fizzbuzz) [1..100]

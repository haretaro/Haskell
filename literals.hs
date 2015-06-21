main = do
	putStrLn "----Bool----"
	(putStrLn . show) True
	(putStrLn . show) False
	
	putStrLn "----Num----"
	(putStrLn . show) 1
	(putStrLn . show) 3.14

	putStrLn "----String----"
	putStrLn "hello"

	putStrLn "----Charactor----"
	putStrLn $ show 'c'

	putStrLn "----Tuple----"
	putStrLn $ show (123,'a')

	putStrLn "----List----"
	(putStrLn . show) [1,2,3]
	putStrLn ['h','e','l','l','o'] -- same as "hello"

	putStrLn "---lambda calculus----"
	(putStrLn . show . (\ x -> x * x)) 2

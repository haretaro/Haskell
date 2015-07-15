data Node t = Node{datum::t,next::Node t} | Nil deriving (Show,Eq)

cons :: [t] -> Node t
cons [] = Nil
cons list = (Node (head list) . cons . tail) list

get :: Integer -> Node t->  t
get 0 node= datum node
get n node= get (n-1) (next node)

len :: Node t -> Integer
len Nil = 0
len node = 1 + (len . next ) node

showData :: Show t => Node t -> String
showData Nil = ""
showData (Node datum next) = show datum  ++ "," ++ showData next

main = do
  (putStrLn . show . cons) [1,2,3]
  let list = cons ["the","answer","is","42"]
  (putStrLn . show) list
  (putStrLn . showData) list
  (putStrLn . show) $ get 2 list
  (putStrLn . show . len) list

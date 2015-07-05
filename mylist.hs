data Node t = Node{datum::t,next::Node t} | End{datum::t} deriving (Show,Eq)

cons :: [t] -> Node t
cons [a] = End a
cons list = (Node (head list) . cons . tail) list

get :: Node t -> Integer ->  t
get node 0 = datum node
get node n = get (next node) (n-1)

len :: Node t -> Integer
len (End _) = 1
len node = 1 + (len . next ) node

showData :: Show t => Node t -> String
showData (End datum) = show datum
showData (Node datum next) = show datum  ++ "," ++ showData next

main = do
  (putStrLn . show . cons) [1,2,3]
  let list = cons ["the","answer","is","42"]
  (putStrLn . show) list
  (putStrLn . showData) list
  (putStrLn . show) $ get list 2
  (putStrLn . show . len) list

data Node t = Node{datum::t,next::Node t} | Nil deriving (Show,Eq)

cons :: [t] -> Node t
cons [] = Nil
cons list = (Node (head list) . cons . tail) list

get :: Node t -> Integer ->  t
get node 0 = datum node
get node n = get (next node) (n-1)


main = do
  (putStrLn . show . cons) [1,2,3]
  let list = ["the","answer","is","42"]
  (putStrLn . show . cons) list
  (putStrLn . show . get (cons list)) 2

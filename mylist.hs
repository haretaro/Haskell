data Node t = Node{datum::t,next::Node t} | Nil deriving (Show,Eq)

cons :: [t] -> Node t
cons [] = Nil
cons list = (Node (head list) . cons . tail) list

main = do
  (putStrLn . show . cons) [1,2,3]
  (putStrLn . show . cons) ["the","answer","is","42"]

import Data.List
main = do
  let list = [1,3,5,6,4,2,0]
  (print . sort) list
  (print . sortBy (\ x y -> compare y x)) list

  

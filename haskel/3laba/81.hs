main::IO()
main =  do 
  print . show $ paths 1 4 g1
  print . show $ paths 3 5 g2
  print . show $ paths 2 6 g2
  print . show $ paths 5 1 g1
g1 :: [(Integer, Integer)]
g1 = [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
g2 :: [(Integer, Integer)]
g2 = [(1,2),(1,3),(1,4),(3,4),(4,5)]       
paths :: Eq a => a -> a -> [(a, a)] -> [[a]]
paths start fin graph
    | start == fin = [[fin]]
    | otherwise = [start : via | 
                  up <- graph, 
                  fst up == start, 
                  via <- paths (snd up) fin [e | e <- graph, e /= up]]
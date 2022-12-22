import Data.Maybe
import Data.List 

graph1 = (6, [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)])
graph2 = (6, [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)])

neighbours :: (Integer, [(Integer, Integer)]) -> Integer -> [Integer]
neighbours ( (_,rs)) b = mapMaybe neighbour rs
    where neighbour (p,q)
		| b == p = Just q
		| otherwise = Nothing

paths :: Integer-> Integer -> (Integer, [(Integer, Integer)]) -> [[Integer]]
paths start finish graph' = paths' [] graph' start finish
	where paths' visited graph' start finish
		| start == finish = [[start]]
		| start `notElem` visited = [start:rest | next <- neighbours graph' start,
												  rest <- paths' (start:visited) graph' next finish]
		| otherwise = []
		
main = do
    print $ paths 1 4 graph1
    print $ paths 2 6 graph2
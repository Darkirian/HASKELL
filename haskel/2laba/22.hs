import Control.Monad.RWS (modify)

main :: IO ()
main = do
    print (range 4 9)
    print (range 1 1)
    print (range 10 (-10))
range :: Int -> Int -> [Int]
range fst lst
    | fst == lst = [lst]
    | fst < lst = fst : range (fst+1) lst
    | otherwise = fst : range (fst-1) lst
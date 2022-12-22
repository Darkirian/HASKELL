import Control.Monad.RWS (modify)

main :: IO ()
main = do
    print (insertAt 'X' "abcd" 2)
    print (insertAt 'X' [] 1000)
    print (insertAt 'X' "abcd" 0)
insertAt :: a -> [a] -> Int -> [a]
insertAt _ _ 0 = error "There is no index 0"
insertAt el [] _ = [el]
insertAt el list 1 = el : list
insertAt el (x:xs) n = x : insertAt el xs (n-1)
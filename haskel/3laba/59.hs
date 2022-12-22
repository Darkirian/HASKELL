data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

main =  do print $ show (take 4 $ hbalTree 'x' 4)    

hbalTree e 0 = [Empty]
hbalTree e 1 = [Branch e Empty Empty]
hbalTree e x = [Branch e f g | (a, b) <- [(x-2, x-1), (x-1, x-1), (x-1, x-2)], f <- hbalTree e a, g <- hbalTree e b]
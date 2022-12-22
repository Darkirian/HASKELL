myconst :: a -> b -> a
myconst a _ = a

myfoldr f z []     = z
myfoldr f z (x:xs) = f x (myfoldr f z xs)  

myReplicate :: Int -> a -> [a]
myReplicate 0 y = [ ]
myReplicate x y = y : myReplicate (x-1) y

mymap :: (a -> b) -> [a] -> [b]
mymap _ [] = []
mymap f (x:xs) = f x : mymap f xs

myfliter :: (a -> Bool) -> [a] -> [a]
myfliter _ [] = []
myfliter p (x:xs)
    | p x       = x : myfliter p xs
    | otherwise = myfliter p xs

myzipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myzipWith _ [] _ = [] 
myzipWith _ _ [] = [] 
myzipWith f (x:xs) (y:ys) = f x y : myzipWith f xs ys
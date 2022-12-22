main = do
    print . dupli $ [1,3,5,1,2,7]
dupli  :: [a] -> [a]
dupli = myfoldr (\ x xs -> x : x : xs) []
myfoldr :: (a -> b -> b) -> b -> [a] -> b
myfoldr f z []     = z
myfoldr f z (x:xs) = f x (myfoldr f z xs)  
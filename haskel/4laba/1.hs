main :: IO ()
main = do
    print $ getLast ""
    print $ getLast "abcde"
    print $ getLast [1, 2, 3]

getLast :: [a] -> a
getLast = foldr1 (const id) 
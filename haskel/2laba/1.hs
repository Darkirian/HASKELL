module Main (main) where 

main :: IO ()
main = print $ lastElem ""

lastElem :: [a] -> a

lastElem a
        | null a = error "Нет элементов"
        | otherwise = last a

import Control.Monad.RWS (modify)
main :: IO ()
main = do
    print . dupli $ "abc"
    print . dupli $ [1, 2, 3]
    print . dupli $ ""

dupli  :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x : x : dupli xs
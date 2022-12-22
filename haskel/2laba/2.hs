myButLast :: [a]->a
myButLast []= error "Empty list"
myButLast [x]=error "One element"
myButLast [x,y]= x 
myButLast (x:xs)= myButLast xs

main::IO()
main = putStr$ show$ myButLast ['a'..'z']
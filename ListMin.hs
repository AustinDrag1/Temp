{- el grupo
 - Austin Dragone
 - Miguel Chavez
 - Kyle Ferguson
 - Brandon Marcoux
 - 
 - COP 4020
 - Matthew Fontaine
 - 2/6/17
-}

module ListMin where

listMin :: (Ord a) => [a] -> a
listMin (x:xs) = findMin x xs 

findMin :: (Ord a) => a -> [a] -> a
findMin a [] = a 
findMin a (y:ys) = if a < y then findMin a ys else findMin y ys 

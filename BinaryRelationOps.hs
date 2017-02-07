{- el grupo
 - Austin Dragone
 - Miguel Chavez
 - Kyle Ferguson
 - Brandon Marcoux
 - 
 - COP 4020
 - Matthew Fontaine
 - 2/5/17
-}

module BinaryRelationOps where
import BinaryRelation 

project1 :: (BinaryRelation a b) -> [a]
project1 [] = [] 
project1 (x:xs) = fst x : project1 xs
--project1 x = fst (head x) : project1 (tail x)

project2 :: (BinaryRelation a b) -> [b] 
project2 [] = [] 
project2 (x:xs) = snd x : project2 xs
--project2 x = snd (head x) : project2 (tail x)

select :: ((a,b) -> Bool) -> (BinaryRelation a b) -> (BinaryRelation a b)
select f [] = [] 
select f (x:xs) = if f x == True then x:select f xs else select f xs

compose :: Eq b => (BinaryRelation a b) -> (BinaryRelation b c) -> (BinaryRelation a c)
compose [] _ = []
compose _ [] = []
compose x y = [ (a,d) | (a,b) <- x, (c,d) <- y, b==c ]


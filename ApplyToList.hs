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

module ApplyToList where
import BinaryRelation 

applyRel :: (Eq k) => k -> (BinaryRelation k v) -> [v]
applyRel ky x = [ v | (k,v) <- x, ky == k ]

applyToList :: (Eq k) => [k] -> (BinaryRelation k v) -> [v] 
applyToList [] _ = [] 
applyToList _ [] = [] 
applyToList (x:xs) pairs = (applyRel x pairs) ++ (applyToList xs pairs)

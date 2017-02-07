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

module WhatIndex where

whatIndex :: (Eq a) => a -> [a] -> Integer
whatIndex t lst = indexer t lst 0

indexer :: (Eq a) => a -> [a] -> Integer -> Integer 
indexer t [] _ = -1 
indexer t (y:ys) accu = if t == y then accu else indexer t ys (accu+1)

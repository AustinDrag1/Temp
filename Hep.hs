{- el grupo
 - Austin Dragone
 - Miguel Chavez
 - Kyle Ferguson
 - Brandon Marcoux
 - 
 - COP 4020
 - Matthew Fontaine
 - 2/4/17
-}

module Hep where

hep :: [String] -> [String] 
hep [] = [] 
hep (a:b:c:xs)
 | [a,b,c] == ["by","the","way"] = "btw" : hep (xs)
 | [a,b,c] == ["for","your","information"] = "fyi" : hep (xs)
 | [a,b,c] == ["be","right","back"] = "brb" : hep (xs)
 | [a,b,c] == ["laughing","out","loud"] = "lol" : hep (xs)
hep (a:b:xs)
 | [a,b] == ["see","you"] = "cya" : hep (xs)
 | [a,b] == ["I","will"] = "I'll" : hep (xs)
hep (a:xs)
 | a == "you" = "u" : hep (xs)
 | a == "are" = "r" : hep (xs)
 | a == "your" = "ur" : hep (xs)
 | a == "boyfriend" = "bf" : hep (xs)
 | a == "girlfriend" = "gf" : hep (xs)
 | a == "great" = "gr8" : hep (xs)
 | otherwise = a : hep (xs)

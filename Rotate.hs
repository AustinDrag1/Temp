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

module Rotate where
import Amount

rotate :: Amount -> (a,a,a,a) -> (a,a,a,a) 
rotate Zero (w,x,y,z) = (w,x,y,z)
rotate One (w,x,y,z) = (z,w,x,y)
rotate Two (w,x,y,z) = (y,z,w,x)
rotate Three (w,x,y,z) = (x,y,z,w)

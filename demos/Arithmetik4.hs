module Arithmetik4 where
import Arithmetik3 (root)
isPrime n
    | n < 2     = error "Zu kleine Zahl fuer Primzahltest"
    | otherwise = nHasNoDivisorGreaterThan 2
  where 
        upto = root 2 n
        nHasNoDivisorGreaterThan k
          | k > upto       = True
          | n `mod` k == 0 = False
          | otherwise      = nHasNoDivisorGreaterThan (k + 1)


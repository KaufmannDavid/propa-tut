module Tut2 where
  import Prelude hiding (foldl, map, filter, scanl, zip, zipWith)
  map f [] = []
  map f (x:xs) = f x : map f xs

  mapf f = foldr (\x -> ((f x) : )) []

  filter f [] = []
  filter f (x:xs) 
   | f x = x : filter f xs
   | otherwise = filter f xs

  filterf f = foldr (\x xs -> if f x then x : xs else xs) []

  squares l = map (^2) l

  zip as bs = case (as,bs) of 
    ([],_) -> []
    (_,[]) -> []
    ((a:as),(b:bs)) -> (a,b) : zip as bs

  zipWith _ [] _ = []
  zipWith _ _ [] = []
  zipWith f (a:as) (b:bs) = f a b : zipWith f as bs

  foldl f z [] = z
  foldl f z (x:xs) = f (foldl f z xs) x

  scanl f i [] = [i]
  scanl f i (x:xs) = i : scanl f (f i x) xs

  tupels = [(x,y)|z <- [1..], x <- [1..z], y <- [z..1]]
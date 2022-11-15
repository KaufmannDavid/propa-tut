module Tut2 where
  import Prelude hiding (foldl, map, filter, scanl, zip, zipWith)
  
  
  map f [] = []
  map f (x:xs) = f x : map f xs

  mapA f l = mapAcc f [] l
    where mapAcc f acc [] = acc
          mapAcc f acc (l:ls) = mapAcc f (acc ++ [f l]) ls

  mapf f = foldr (\x xs -> f x : xs) []

  filter _ [] = []
  filter f (l:ls) = if f l then l : filter f ls else filter f ls
  filterf f = foldl (\a i -> if f i then i:a else a) []

  squares = map (^2)

  zip (a:as) (b:bs) = (a,b) : zip as bs
  zip _ _ = []

  zipWith f (a:as) (b:bs) = f a b : zipWith f as bs
  zipWith _ _ _ = []

  foldl f acc [] = acc
  foldl f acc (x:xs) = foldl f (f acc x) xs

  -- scanl = reverse $ fst (foldl (\(res,acc) value -> (((f acc value) : res), f acc value)) ([i], i) l)
  scanl f acc [] = [acc]
  scanl f acc (x:xs) = acc : scanl f (f x acc) xs

  tupels = concat [if x == y then [(x,y)] else [(x,y),(y,x)]| x <- [1..], y <- [1..x]]

  tupels2 = [(x,y)| x <- [1..], y <- [1..x]]

  tupels3 = [(y-x,y)| y<- [1..], x <- [1..y]]
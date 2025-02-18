module MergeSort where

merge left [] = left
merge [] right = right
merge left@(x:xs) right@(y:ys)
  | x <= y    = x : merge xs   right
  | otherwise = y : merge left ys

mergeSort []   = []
mergeSort [x]  = [x]
mergeSort list =
  merge (mergeSort left) (mergeSort right)
  where left  = take (length list `div` 2) list
        right = drop (length list `div` 2) list

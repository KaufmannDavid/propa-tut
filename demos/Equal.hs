module Equal where
  class Eq t where 
    (==):: t -> Bool
    (/=):: t -> Bool
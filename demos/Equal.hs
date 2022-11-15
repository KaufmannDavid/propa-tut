module Equal where
  class Eq t where 
    (==):: t -> t -> Bool
    (/=):: t -> t -> Bool
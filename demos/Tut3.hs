module Tut3 where
  data Fraction = Fraction Integer Integer deriving Show

  mul:: Fraction -> Fraction -> Fraction
  mul (Fraction a c) (Fraction b d) = Fraction (a*b) (c*d)
  
  data DriversLicense = DriversLicense [Class] String (Int,Int,Int)

  data Class = A | B Bool | BE | C | D

  data PlayingCard = PlayingCard Suit Rank deriving (Eq, Ord, Show)

  data Suit = Hearts | Diamonds | Clubs | Spades deriving (Eq, Ord, Show, Enum)

  data Rank = Rank7 | Rank8 | Rank9 | Rank10 | Jack | Queen | King | Ace deriving (Eq, Ord, Show, Enum)

  data Queue a = Q [a] [a] deriving Show

  fromList:: [a] -> Queue a
  fromList x = Q x []

  toList:: Queue a -> [a]
  toList (Q f b) = f ++ reverse b

  enqueue:: a -> Queue a -> Queue a
  enqueue e (Q f b) = Q f (e:b)

  dequeue:: Queue a -> Maybe (a, Queue a)
  dequeue (Q [] []) = Nothing
  dequeue (Q (f:fs) b) = Just (f, Q fs b)
  dequeue (Q [] b) = dequeue (Q (reverse b) [])

  data Tree t = Leaf | Node (Tree t) t (Tree t)

  bfs:: Tree t -> [t]
  bfs Leaf = []
  bfs x = go (Q [x] [])

  go:: Queue (Tree t) -> [t]
  go x = case dequeue x of
    Nothing -> []
    Just(Leaf, q) -> go q
    Just(Node l x r, q) -> x : go (enqueue r (enqueue l q))






  
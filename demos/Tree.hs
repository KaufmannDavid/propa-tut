module Tree where
  data Tree t = Leaf | Node (Tree t) t (Tree t)

  example = Node Leaf 1 (Node (Node Leaf 2 Leaf) 3 Leaf)

  result = [1,3,2]
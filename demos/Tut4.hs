module Tut4 where
  import Data.Set
  data LambdaTerm = 
    Var String 
    | App LambdaTerm LambdaTerm 
    | Abs String LambdaTerm

  fv :: LambdaTerm -> Set String
  fv (Var a) = fromList [a]
  fv (App t1 t2) = union (fv t1) (fv t2)
  fv (Abs b t) = delete b (fv t)

  sub (a, term) (Var s) = if s == a then term else Var s
  sub (a, term) (App l t) = App (sub (a, term) l) (sub (a,term) t)
  sub (a, term) (Abs x t) = if a == x then Abs x t else Abs x (sub (a, term) t)

  app left right = Prelude.foldr (:) right left

  splits :: [t] -> [([t], [t])]
  splits [] = []
  splits l = app (splitsH [] l []) [(l,[])]

  splitsH :: [a] -> [a] -> [([a], [a])] -> [([a], [a])]
  splitsH _ [] l = l
  splitsH x (y:ys) l =  splitsH (app x [y]) ys (app l [(x,(y:ys))])
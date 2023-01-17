module Tut4b where
import Data.Set

data LambdaTerm = 
    Var String 
    | Abs String LambdaTerm
    | App LambdaTerm LambdaTerm
  
fv:: LambdaTerm -> Set String
fv (Var a) = fromList [a]
fv (Abs x t) = delete x (fv t)
fv (App l r) = union (fv l) (fv r)

sub (x,t) (Var a) = if x == a then t else Var a
sub (x,t) (Abs b t2) = if x == b then Abs b t2 else Abs b (sub (x,t) t2)
sub (n,a) (App f x) = App (sub (n,a) f) (sub (n,a) x)
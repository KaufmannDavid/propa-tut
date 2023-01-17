module Lambda where
import Data.Set

data LambdaTerm
  = Var String  -- Variable
  | App LambdaTerm LambdaTerm   -- Funktionsanwendung: f a
  | Abs String LambdaTerm
  deriving Show   -- Abstraktion: \p.b

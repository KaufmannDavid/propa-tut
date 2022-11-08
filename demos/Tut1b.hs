module Tut1b where
  fac 0 = 1
  fac n = n * (fac (n-1))

  fibAcc 0 b c =  b
  fibAcc 1 b c = c
  fibAcc n b c = fibAcc (n-1) c (b+c)
  fib n = fibAcc n 0 1

  fibs 0 = [0]
  fibs n = let x = fibAcc n 0 1 in x: fibs (n-1)
module FirstSteps where
  double x = (+) x x

  lengthL x = lengthHelper x 0 where 
    lengthHelper [] acc = acc
    lengthHelper (x:xs) acc = lengthHelper xs acc + 1


  funcSum _ [] = 0
  funcSum f (x:xs) = f x + funcSum f xs

  fac 0 = 1
  fac n = n * fac (n-1)

  fibHelper 1 a b = a + b
  fibHelper n a b = fibHelper (n-1) b (a+b)
  fib n = fibHelper n 0 1

  
  fibs n = fibAcc [1,0] (n-2) where
    fibAcc acc 0 = reverse acc
    fibAcc (x:y:acc) n = fibAcc (x + y : x : y: acc) n-1
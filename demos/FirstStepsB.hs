module FirstStepsB where
  double x = 2*x
  dSum x y = double x + double y
  area r = pi * r * r

  funcSum _ [] = 0
  funcSum s (x:xs) = s x + funcSum s xs

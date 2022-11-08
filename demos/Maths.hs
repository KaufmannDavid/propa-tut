module Maths where

add x y = x + y

add2 = add 2

sub x y = x - y

tau = 2 * pi

lengthL l = lengthAcc l 0 where
  lengthAcc [] a = a
  lengthAcc (h:t) a = lengthAcc t a + 1

circumference r = tau * r

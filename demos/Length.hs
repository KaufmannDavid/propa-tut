module Length where
lengthL l = lengthAcc l 0 where
  lengthAcc [] a = a
  lengthAcc (h:t) a = lengthAcc t a + 1
myDrop 0 aList = aList
myDrop n aList = myDrop (n - 1) (tail aList)

myLength [] = 0
--myLength xs = 1 + myLength (tail xs)
myLength (x:xs) = 1 + myLength xs

myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x:rest
  where rest = myTake(n - 1) xs

finiteCycle (first:rest) = first:rest ++ [first]
myCycle (first:rest) = first:myCycle (rest++ [first])
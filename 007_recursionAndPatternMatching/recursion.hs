
myGCD a b = if a `mod` b == 0
            then b
            else myGCD b remainder
 where remainder = a `mod` b

--sayAmount n = case n of
--  1 -> "one"
--  2 -> "two"
--  n -> "a bunch"

sayAmount 1 = "one"
sayAmount 2 = "two"
sayAmount n = "a bunch"

myHead (x:xs) = x
myHead [] = error "No head for empty list"

myTail (_:xs) =xs
myTail []=[]

myGCD2 a 0 = a
myGCD2 a b = myGCD2 b (a `mod` b)

-- Int type
-- Bounded try x*2000 -> 4000 and then x^2000 -> 0
x::Int
x = 2

-- Integer type
-- try the same as above
y::Integer
y = 2

letter::Char
letter = 'a'

interestRate :: Double
interestRate = 0.375

isFun::Bool
isFun = True

values::[Int]
values = [1,2,4]

testScores::[Double]
testScores = [0.99,0.7,0.8]

letters::[Char]
letters = ['a','b','c']
-- try in ghci letters == "abc" -> true

aPet::[Char]
aPet = "cat"

anotherPet::String
anotherPet = "dog"

ageAndHeight::(Int,Int)
ageAndHeight = (34,74)

streetAddress::(Int,String)
streetAddress = (1,"Common Street")

triple :: Int -> Int
triple n = n * 3

-- why don't we call from Integral on 2 because haskell literal numbers are polimorphic
half :: Int -> Double
half n = (fromIntegral n)/2

-- QuickCheck 11.1
halve::Integer -> Integer
halve n = n `div` 2


--show 6 -> "6"
--show 'c' -> "c"
--show 6.0 -> "6.0"


-- QuickCheck 11.2
printDouble::Int -> String
printDouble n = show double
  where double = n * 2


-- z = read "6" cannot imply Int or Integer or Double, not enough info
-- q = z/2 could help or say explicitly

anotherNumber :: Int
anotherNumber = read "6"

-- will just work for Int, not double
someNumber :: String -> Int
someNumber n = read n


makeAddress:: Int -> String -> String -> (Int,String,String)
makeAddress number street town = (number,street,town)

--desugaring
makeAddressLambda = (\number ->
                      (\street ->
                        (\town -> (number,street,town))))

-- (((makeAddressLambda 123) "Happy St")"Haskell Town")
-- (((makeAddress 123) "Happy St")"Haskell Town")
-- makeAddressLambda 123 "Happy St" "Haskell Town"

--makeAddress:: Int -> String -> String -> (Int,String,String)

-- String -> String -> (Int,String,String)
--((makeAddressLambda 123) "Happy St")
-- String -> (Int,String,String)
-- (((makeAddressLambda 123) "Happy St") "Haskell Town")
-- (Int,String,String)

simple:: a -> a
simple x = x


-- equivalent to makeAddress but less specific
makeTriple:: a -> b -> c -> (a,b)
makeTriple a b c = (a,b,c)

myFoldl::(a->b->a)-> a -> [b] -> a
myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
  where newInit = f init x
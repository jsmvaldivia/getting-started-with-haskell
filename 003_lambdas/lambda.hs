sumSquareOrSquareSum x y = if sumSquare > squareSum
                           then sumSquare
                           else squareSum
  where sumSquare = x^2 + y^2
        squareSum = (x+y)^2


sumSquareOrSquareSum2 x y = if (x^2 + y^2) > ((x+y)^2)
                           then x^2 + y^2
                           else (x+y)^2

operation sumSquare squareSum = if sumSquare > squareSum
                                then sumSquare
                                else squareSum

sumSquareOrSquareSum3 x y = operation (x^2 + y^2) ((x+y)^2)

sumSquareOrSquareSum4 x y = (\ sumSquare squareSum ->
                            if sumSquare > squareSum
                            then sumSquare
                            else squareSum) (x^2 + y^2) ((x+y)^2)

doubleDouble x = double * 2
  where double = x * 2

doubleDouble2 x = (\x-> x * 2), (x * 2)
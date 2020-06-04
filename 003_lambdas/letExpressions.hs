sumSquareOrSumSquare x y = let sumSquare = (x^2 + y^2)
                               squareSum = (x+y)^2
                           in
                            if sumSquare > squareSum
                            then sumSquare
                            else squareSum


overwrite x = let x = 2
              in
                let x = 3
                in
                  let x = 4
                  in
                   x

overwrite2 x = (\x ->
               (\x ->
                 (\x -> x) 4
                )3
               )2

counter x = let x = x+1
            in
             let x = x + 1
             in
             x

counter2 x = (\x->x+1)((\x -> x+1)((\x->x) x))


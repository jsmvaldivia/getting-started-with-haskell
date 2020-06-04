ifEvenInc n = if even n
              then n + 1
              else n

inc n = n + 1

ifEvenDouble n = if even n
              then n * 2
              else n

double n = n * 2

ifEvenSquare n = if even n
              then n ^ 2
              else n

square n = n ^ 2

ifEven aFunction n = if even n
                     then aFunction n
                     else n

ifEvenInc2 n = ifEven inc n
ifEvenDouble2 n = ifEven double n
ifEvenSquare2 n = ifEven square n

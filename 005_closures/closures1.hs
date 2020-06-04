inc n = n + 1
double n = n * 2
square n = n ^ 2

ifEven aFunction n = if even n
                     then aFunction n
                     else n

ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n

ifEvenApply func = (\x-> ifEven func x)

ifEvenInc2 = ifEvenApply inc


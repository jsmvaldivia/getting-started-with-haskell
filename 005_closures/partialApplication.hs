add4 a b c d = a + b + c + d

addXto3 x = (\b c d -> add4 x b c d)

adXYto2 x y = (\c d -> add4 x y c d)

subtract2 = flip (-) 2

-- just seeing if it works
subtract4 x = x - 4


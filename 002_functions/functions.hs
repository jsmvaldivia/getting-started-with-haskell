calculateChangeFor owed given = if change > 0
                                then change
                                else 0
  where change = given - owed

doublePlusTwo x = doubleX + 2
  where doubleX = x * 2

inc x = x + 1

double x = x * 2

square x = x * x

something n = if isEven
             then n-2
             else 3 * n +1
  where isEven = even n
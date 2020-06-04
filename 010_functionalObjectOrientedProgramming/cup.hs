
--cup flOz = \_ -> flOz

-- Constructor
cup flOz = \message -> message flOz


getOz aCup = aCup (\flOz->flOz)

drink aCup ozDrank = if (flOz - ozDrank) >= 0
                     then cup (flOz - ozDrank)
                     else cup 0
  where flOz = getOz aCup

isEmpty aCup = getOz aCup == 0


--afterSip = drink coffeeCup 1
--getOz coffeeCup
--getOz afterSip coffeeCup
--afterTwoSips = drink afterSip 1
--getOz afterTwoSips coffeeCup




import Data.List

author = ("Juan","Valdivia")

names = [("Ian","Curtis"),
         ("Bernard","Summer"),
         ("Peter","Hook"),
         ("Armin","Hook"),
         ("Stephen", "Morris")]

comparingLastNamesOn name1 name2 = if lastName1 > lastName2
                                 then GT
                                 else if lastName1 < lastName2
                                    then LT
                                    else EQ
  where lastName1 = snd name1
        lastName2 = snd name2

-- sortBy comparingLastNamesOn names

comparingLastNamesAndFirstNamesOn name1 name2 = if lastName1 > lastName2
                                                then GT
                                                else if lastName1 < lastName2
                                                  then LT
                                                  else if firstName1 > firstName2
                                                    then GT
                                                    else if firstName2 < firstName1
                                                      then LT
                                                      else EQ

  where lastName1 = snd name1
        lastName2 = snd name2
        firstName1 = fst name1
        firstName2 = fst name2



compareSecondNames name1 name2 = compare (snd name1) (snd name2)

-- using compare
comparingLastNames name1 name2 = if secondNamesAreEqual
                                 then compare (fst name1) (fst name2)
                                 else compareSecondNames name1 name2

  where secondNamesAreEqual = compareSecondNames name1 name2 == EQ

--sortBy comparingLastNames names
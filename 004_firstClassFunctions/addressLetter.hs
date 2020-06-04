
addressLetter name location = nameText ++ " - " ++location
  where nameText = (fst name) ++ " " ++ (snd name)

--San Francisco, CA, 94111"
  --"Ian Curtis - PO Box 1234 - San Francisco, CA, 94111"

sfOffice name = if lastName < "L"
                then nameText
                     ++ " - PO Box 1234 - San Francisco, CA, 94111"
                else nameText
                     ++ " - PO Box 1234 - San Francisco, CA, 94109"
  where lastName = snd name
        nameText = (fst name) ++ " " ++ (snd name)

-- ny office
nyOffice name = nameText ++ ": PO Box 789 - New York, NY,10013"
  where nameText = (fst name) ++ " " ++ (snd name)

-- Reno Office

renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 94109"
  where nameText = snd name


getLocationNameStructure locationCode = case locationCode of
  "ny" -> nyOffice
  "sf" -> sfOffice
  "reno" -> renoOffice
  _ -> (\name->(fst name)++ " " ++ (snd name))


customAddressLetter name locationCode = locationAddressFor name
  where locationAddressFor = getLocationNameStructure locationCode


-- On closures extra
flipArgs binaryFunction= (\x y -> binaryFunction y x)
customAddressLetterV2 = flipArgs customAddressLetter

addressLetterNy = customAddressLetterV2 "ny"

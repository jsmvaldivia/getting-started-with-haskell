simple x = x
longList = [1 .. ]

stillLongList = simple longList

isPalindrome word = word == reverse word

--any binary function can be treated as an infix operator for readability
respond phrase = if '!' `elem` phrase
                 then "wow!"
                 else "oh.. okay"

takeLast n aList = reverse (take n (reverse aList))

dropLast n aList = reverse (drop n (reverse aList))

ones n = take n (cycle [1])

assignToGroups n aList = zip groups aList
  where groups = cycle [1..n]

subsequence start end aList = reverse (take end (reverse(drop start aList)))

inFirstHalfOf aList val = val `elem` firstHalf
  where midPoint  = (length aList) `div` 2
        firstHalf = take midPoint aList

inSecondHalfOf aList val = val `elem` firstHalf
  where midPoint  = (length aList) `div` 2
        firstHalf = take midPoint (reverse aList)

elem val list =

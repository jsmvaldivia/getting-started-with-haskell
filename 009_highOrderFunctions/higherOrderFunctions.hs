import Data.Char

add3ToAll [] = []
add3ToAll (x:xs) = (x + 3) : add3ToAll xs

mul3ToAll [] = []
mul3ToAll (x:xs) = (x * 3) : mul3ToAll xs

-- And so on

myMap f [] = []
myMap f (x:xs) = (f x):myMap f xs


myFilter test [] = []
myFilter test (x:xs) = if test x
                       then x:myFilter test xs
                       else myFilter test xs

remove test [] = []
remove test (x:xs) = if test x
                     then remove test xs
                     else x:remove test xs

concatAll xs = foldl (++) "" xs

myProduct xs = foldl (*) 1 xs

sumOfSquares xs = foldl (+) 0 (map (^2) xs)

--reverse a list with foldl
rcons x y = y:x
myReverse xs = foldl rcons [] xs

myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
  where newInit = f init x

-- myFoldl always recursing on the rest of the list, it must get
-- smaller until it's empty (if not infinite)

myFoldr f init [] = init
myFoldr f init (x:xs) = f x rightResult
  where rightResult = myFoldr f init xs


myElem val aList = (length filteredList) /= 0
  where filteredList = filter (==val) aList


noSpacesWordTest text = filter (/=' ') text
processedWordTest text = map toLower text

isPalindrome text = processedWord == reverse processedWord
  where noSpacesWord = filter (/=' ') text
        processedWord = map toLower noSpacesWord

harmonic n = sum (take n seriesValues)
  where seriesPairs = zip (cycle [1.0]) [1.0,2.0 ..]
        seriesValues = map (\pair -> (fst pair)/(snd pair)) seriesPairs
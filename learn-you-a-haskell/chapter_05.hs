multThree :: Int -> (Int -> (Int -> Int))
multThree x y z = x * y * z

compareWithHundred :: Int -> Ordering
compareWithHundred x = compare 100 x

-- compareWithHundred :: Int -> Ordering
-- compareWithHundred = compare 100

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperAlphaNum :: Char -> Bool
isUpperAlphaNum = (`elem` ['A'..'Z'])

-- (-4) is not a section, it is a negative 4
-- (subtract 4) is a section

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)


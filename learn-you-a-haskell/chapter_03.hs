lucky :: Int -> String
lucky 7 = "LUCKLY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal"

sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"
-- raises error because there is no catchall

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors a b = (fst a + fst b, snd a + snd b)
-- addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _,) = x

second :: (a, b, c) -> b
second (_, y, _,) = y

third :: (a, b, c) -> c
third (_, _, z,) = z

xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]
[a + b | (a, b) <- xs]

head' :: [a] -> a
head' [] = error "Can't call head on an empty list"
head' (x:_) = x

tell :: (Show a) => a -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is too long. The first two elements are: " ++ show x
                ++ " and " ++ show y

badAdd :: (Num a) => [a] -> a
badAdd (x:y:z:[]) = x + y + z
-- badAdd [100,20] raises an error

firstLetter :: String -> String
firstLetter "" = "Empty string"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b = b
    | otherwise = a

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a == b = EQ
    | a <= b = LT
    | otherwise = GT

bmiTell :: Double -> Double -> String
bmiTell weight height
    | bmi <= skinny = "You're underweight, eat more!"
    | bmi <= normal = "Looking good!"
    | bmi <= overweight = "You're overweight, BORA BUSCAR O SHAPE INEXPLICÁVEL!"
    | otherwise = "You're obese, stop it, get some help."
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          overweight = 30.0
    -- where bmi = weight / height ^ 2
    --       (skinny, normal, fat) = (18.5, 25.0, 30.0)

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2

cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi > 25.0]

head' :: [a] -> a
head' [] = error "No head for empty lists"
head' (x:_) = x

head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists"
                      (x:_) -> x

describeList :: [a] -> String
describeList ls = "The list is " ++ case ls of [] -> "empty"
                                               [x] -> "a singleton list"
                                               xs -> "a longer list"

describeList :: [a] -> String
describeList ls = "The list is " ++ what ls
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list"
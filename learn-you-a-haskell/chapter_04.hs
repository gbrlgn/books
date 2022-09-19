maximum' :: (Ord a) => [a] -> a
maximum' [] = "Empty list."
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate :: Int -> a -> [a]
replicate n x
    | n <= 0 []
    | x : replicate' (n - 1) x

take' :: Int -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n - 1) xs

reverse' :: [a] -> [a]
reverse' x
    | x == [] = []
reverse' (x:xs) = reverse' xs ++ [x]

repeat' :: a -> [a]
repeat' x = x : repeat' x

zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise a `elem'` xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let lesser = [y | y <- xs, y <= x]
        greater = [z | z <- xs, z > x]
    in  quicksort lesser ++ [x] ++ quicksort greater
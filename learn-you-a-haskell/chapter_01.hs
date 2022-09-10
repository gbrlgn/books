succ 8

min 9 10

min 3.4 3.2

max 100 101

succ 9 + max 5 4 + 1

(succ 9) + (max 5 4) + 1

succ (9 * 10)

92 `div` 10

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
    then x
    else x * 2

doubleSmallNumber' x = (if x > 100
    then x
    else x * 2) + 1

conanO'Brien = "It's a-me! Conan O' Brien!"

lostNumbers = [4,8,15,16,23,42]

[1,2,3,4] ++ [9,10,11,12] -- [1,2,3,4,9,10,11,12]

"hello" ++ " " ++ "world" -- "hello world"

['w','o'] ++ ['o','t'] -- ['w','o','o','t']

'A':" SMALL CAT" -- 'A SMALL CAT"

5:[1,2,3,4] -- [5,1,2,3,4]

[1,2,3,4] ++ [5] -- [1,2,3,4,5]

"Steve Buscemi" !! 6 -- 'B'

[9.4,33.2,96.2,11.2,23.5] !! 1 -- 33.2

b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]

b ++ [[1,1,1,1]] -- [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3],[1,1,1,1]]

[6,6,6]:b --- [[6,6,6],[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]

b !! 1 -- [1,2,3,4]

[3,2,1] > [2,1,0] -- True

[3,2,1] > [2,10,100] -- True

[3,4,2] < [3,4,3] -- True

[3,4,2] > [2,4] -- True

[3,4,2] == [3,4,2] -- True

head [5,4,3,2,1] -- 5

tail [5,4,3,2,1] -- [4,3,2,1]

last [5,4,3,2,1] -- 1

init [5,4,3,2,1] -- [5,4,3,2]

length [5,4,3,2,1] -- 5

null [1,2,3] -- False

null [] -- True

reverse [5,4,3,2,1] -- [1,2,3,4,5]

take 3 [5,4,3,2,1] -- [5,4,3]

take 1 [3,9,3] -- [3,9,3]

take 5 [1,2] -- [1,2]

take 0 [6,6,6] -- []

drop 3 [8,4,2,1,5,6] -- 1,5,6

drop 0 [1,2,3,4] -- [1,2,3,4]

drop 100 [1,2,3,4] -- []

maximum [1,9,2,3,4] -- 9

minimum [8,4,2,1,5,6] -- 1

sum [5,2,1,6,3,2,5,7] -- 31

product [6,2,1,2] -- 24

product [1,2,5,6,7,9,2,0] -- 0

4 `elem` [3,4,5,6] -- True

10 `elem` [3,4,5,6] -- False

[1..20] -- [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

['a'..'z'] -- "abcdefghijklmnopqrstuvwxyz"

['K'..'Z'] -- "KLMNOPQRSTUVWXYZ"

[2,4..20] -- [2,4,6,8,10,12,14,16,18,20]

[3,6..20] -- [3,6,9,12,15,18]

[13,26..24*13] -- [13,26,39,52,65,78,91,104,117,130,143,156,169,182,195,208,221,234,247,260,273,286,299,312]

take 24 [13,26..] -- [13,26,39,52,65,78,91,104,117,130,143,156,169,182,195,208,221,234,247,260,273,286,299,312]

take 10 (cycle [1,2,3]) -- [1,2,3,1,2,3,1,2,3,1]

take 12 (cycle "LOL ") -- "LOL LOL LOL "

take 10 (repeat 5) -- [5,5,5,5,5,5,5,5,5,5]

replicate 3 10 -- [10,10,10]

[0.1, 0.3 .. 1] -- [0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999]

[x*2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]

[x*2 | x <- [1..10], x*2 >= 12] -- [12,14,16,18,20]

[x | x <- [50..100], x `mod` 7 == 3] -- [52,59,66,73,80,87,94]

boomBangs xs = [
    if x < 10 then "BOOM!" else "BANG!"
    | x < xs
    , odd x
    ]

boomBangs [7..13] -- ["BOOM!","BOOM!","BANG!","BANG!"]

[x | x <- [10..20], x/= 13, x /= 15, x/= 19] -- [10,11,12,14,16,17,18,20]

[x+y | x <- [1,2,3], y <- [10,100,1000]] -- [11,101,1001,12,102,1002,13,103,1003]

[x*y | x <- [2,5,10], y <- [8,10,11]] -- [16,20,22,40,50,55,80,100,110]

[x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50] -- [55,80,100,110]

nouns = ["hobo","frog","pope"]

adjectives = ["lazy","grouchy","scheming"]

[adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns] -- ["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog","grouchy pope","scheming hobo","scheming frog","scheming pope"]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

removeNonUppercase "Hahaha! Ahahaha!" -- "HA"

removeNonUppercase "IdontLIKEFROGS" -- "ILIKEFROGS"

xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]

[[x | x <- xs, even x] | xs <- xxs] -- [[2,2,4],[2,4,6,8],[2,4,2,6,2,6]]

(3, 'a', "hello")

(50, 50.4, "hello", 'b')

fst (8, 11) -- 8

fst ("Wow", False) -- "Wow"

snd (8, 11) -- 1

fst ("Wow", False) -- False

zip [1,2,3,4,5] [5,5,5,5,5] -- [(1,5),(2,5),(3,5),(4,5),(5,5)]

zip [5,3,2,6,2,7,2,5,4,6,6] ["im", "a", "turtle"] -- [(5,"im"),(3,"a"),(2,"turtle")]

zip [1..] ["apple", "orange", "cherry", "mango"] -- [(1,"apple"),(2,"orange"),(3,"cherry"),(4,"mango")]

triples = [(a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10]]

rightTriangles = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2]

rightTriangles' = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24] -- [(6,8,10)]
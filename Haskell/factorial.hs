-- Calculates the factorial of a number
fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)

-- Other way to calculate the factorial with lists
-- fact n = product [1...n]


main = print $ fact 7


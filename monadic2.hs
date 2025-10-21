-- apply function; <*> :: f (a -> b) -> f a -> f b
--  in the f universe
-- 

x = Just 1
y = Just 2

add :: Int -> Int -> Int
add a b = a + b

-- add x y errors!

splitByComma :: String -> [String]
safeIndex :: Int -> [a] -> Maybe a
getFirstNChars :: Int -> String -> Maybe String
strToInt :: String -> Maybe Int
fourYearsAfter :: Int -> Int

expectedGradYear :: String -> Maybe Int
-- "2026-12345, PERFECT, STUDENT"

-- Using multiunvierse approach (instead of cases)



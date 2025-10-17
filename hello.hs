-- import Data.Function ((&))

-- intLogger :: Int -> IO ()
-- intLogger x = putStrLn $ show $ x

main :: IO ()
-- main = putStrLn $ show $ incr 2
-- main = putStrLn $ greet "Meow"
-- main = putStrLn $ show $ prodOfSquares1 2 2 -- 16
-- main = putStrLn $ show $ prodOfSquares2 2 2 -- 16
-- main = putStrLn $ show $ prodOfSquares3 2 2 -- 16
-- main = putStrLn $ show $ prodOfSquares4 2 2 -- 16
-- main = putStrLn $ strProdOfSquares 2 2 -- 4
-- main = intLogger $ incSqrDec1 1 -- 3 
-- main = intLogger $ incSqrDec2 1 -- 3 
-- main = intLogger $ incSqrDec3 1 -- 3 

-- incr :: Int -> Int
-- incr n = n + 1

-- greet :: String -> String
-- greet x = "Hello, " <> x <> "!"

-- prodOfSquares1 :: Int -> Int -> Int
-- prodOfSquares1 a b = (a ^ 2) * (b ^ 2)

-- prodOfSquares2 :: Int -> Int -> Int 
-- prodOfSquares2 a b =
--   let
--     a2 = a * a
--     b2 = b * b
--   in a2 * b2
  
-- prodOfSquares3 :: Int -> Int -> Int
-- prodOfSquares3 a b =
--   a2 * b2
--   where
--     a2 = a * a
--     b2 = b * b

-- prodOfSquares4 :: Int -> Int -> Int
-- prodOfSquares4 a b = a2 * b2
--   where
--     square n = n*n
--     a2 = square a
--     b2 = square b
 
-- ########## isa pang <>
-- strProdOfSquares :: Int -> Int -> String
-- strProdOfSquares a b =
--   (show a) <> "^2 + " <> (show b) <> "^2 = " <> (show result)
--   where
--     square n = n*n
--     a2 = square a
--     b2 = square b
--     result = a2 + b2

-- incSqrDec1 :: Int -> Int
-- incSqrDec1 a = decr (square (incr a))
--   where
--     square n = n*n
--     incr n = n + 1
--     decr n = n - 1
 
-- ########## isa pang $
-- incSqrDec2 :: Int -> Int
-- incSqrDec2 a = decr $ square $ incr $ a
--   where
--     square n = n*n
--     incr n = n + 1
--     decr n = n - 1

-- incSqrDec3 :: Int -> Int
-- incSqrDec3 a =
--   a
--     & incr
--     & square
--     & decr
--   where
--     square n = n*n
--     incr n = n + 1
--     decr n = n - 1
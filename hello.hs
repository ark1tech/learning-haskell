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
-- main = intLogger $ incSqrDec4 1 -- 3 
-- main = intLogger $ incSqrDec5 1 -- 3 

-- main = intLogger $ double1 2 2-- 4 
-- main = intLogger $ double2 2 2-- 4 

-- main = intLogger $ halve1 2 -- 1
-- main = intLogger $ halve2 2 -- 1
-- main = intLogger $ halve3 2 -- 1

-- main = putStrLn $ getSign1 2 -- 1
-- main = putStrLn $ getSign2 2 -- +
-- main = putStrLn $ show $ getSign3 2 -- Plus
-- main = putStrLn $ show $ getSign4 2 -- Just Plus

-- main = putStrLn $ show $ signToStr1 Plus -- +

-- main = putStrLn $ show $ signToStr2 (Just Plus) -- +

-- main = putStrLn $ show $ signToStr3 (Just Plus) -- +

-- main = putStrLn 
--   $ userBrowseMsg1 
--   $ LoggedInUser "hehe" --  "You are browsing as user hehe"

-- main = putStrLn 
--   $ userBrowseMsg2 
--   $ LoggedInUser "hehe" --  "You are browsing as user hehe"




-- ##################################################


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

-- incSqrDec4 :: Int -> Int
-- incSqrDec4 a = decr . square . incr $ a
  -- where
  --   square n = n*n
  --   incr n  = n + 1
  --   decr n = n - 1

-- incSqrDec5 :: Int -> Int
-- incSqrDec5 = decr . square . incr 
--   where
--     square n = n*n
--     incr n  = n + 1
--     decr n = n - 1

-- double1 :: Int -> Int -> Int
-- double1 x y = mul x y
--   where
--     mul a b = a * b

-- double2 :: Int -> Int -> Int
-- double2 = mul
--   where
--     mul a b = (*) a b

-- halve1 :: Int -> Int
-- halve1 a = div a 2

-- halve2 :: Int -> Int
-- halve2 = \x -> div x 2

-- halve3 :: Int -> Int
-- halve3 = flip div $ 2

-- getSign1 :: Int -> String
-- getSign1 a =
--   if a > 0 then
--     "+"
--   else if a < 0 then
--     "-"
--   else
--     ""

-- getSign2 :: Int -> String
-- getSign2 a
--   | a > 0 = "+"
--   | a < 0 = "-"
--   | a == 0  = ""

-- data Sign1 = Plus | Minus | NoSign
--   deriving (Show, Eq)

-- getSign3 :: Int -> Sign1
-- getSign3 a
--   | a > 0 = Plus
--   | a < 0 = Minus
--   | a == 0 = NoSign

-- data Sign2 = Plus | Minus
--   deriving (Show, Eq)

-- getSign4 :: Int -> Maybe Sign2
-- getSign4 a
--   | a > 0 = Just Plus
--   | a < 0 = Just Minus
--   | a == 0 = Nothing

-- signToStr1 :: Sign1 -> String
-- signToStr1 Plus = "+"
-- signToStr1 Minus = "-"
-- signToStr1 NoSign = ""

-- signToStr2 :: Maybe Sign2 -> String
-- signToStr2 (Just Plus) = "+"
-- signToStr2 (Just Minus) = "-"
-- signToStr2 Nothing = ""

-- signToStr3 :: Maybe Sign2 -> String
-- signToStr3 a = case a of
--   Just Plus -> "+"
--   Just Minus -> "-"
--   Nothing -> ""

-- data User
--   = LoggedInUser String
--   | GuestUser

-- userBrowseMsg1 :: User -> String
-- userBrowseMsg1 (LoggedInUser a) = 
--   "You are browsing as user " <> a
-- userBrowseMsg1 GuestUser = "You are browsing as a guest"

-- data User2
--   = LoggedInUser { username :: String }
--   | GuestUser

-- userBrowseMsg2 :: User2 -> String
-- userBrowseMsg2 LoggedInUser { username = a } = "You are browsing as user " <> a
-- userBrowseMsg2 GuestUser = "You are browsing as a guest"

-- data Counter = Counter Int String
-- incrCounter1 :: Counter -> Counter
-- incrCounter1 (Counter a b) = Counter (a + 1) b


-- data Counter2 = Counter2 { count :: Int, name :: String }
-- incrCounter2 :: Counter2 -> Counter2
-- incrCounter2 c = c { count = count c + 1 }


-- allButHead1 :: [a] -> [a]
-- allButHead1 [] = []
-- allButHead1 (x : xs) = [x]

allButHead2 :: [a] -> Maybe a
allButHead2 [] = Nothing
allButHead2 (x : _) = Just x
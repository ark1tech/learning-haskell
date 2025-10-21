-- incrCounter2 takes in a Counter2 and returns a new Counter2 corresponding to incrementing the count field of the input Counter2 by one while keeping name as is:

data Counter2 = Counter2 { count :: Int, name :: String }
  deriving (Show, Eq)

incrCounter2 :: Counter2 -> Counter2
incrCounter2 c = c{ count = count c + 1, name = name c}

-- Test cases
main :: IO ()
main = do
  -- Test 1: Basic increment
  let counter1 = Counter2 { count = 0, name = "Test Counter" }
  let result1 = incrCounter2 counter1
  putStrLn $ "Test 1: " ++ name counter1
  putStrLn $ "  Before: " ++ show counter1
  putStrLn $ "  After:  " ++ show result1
  putStrLn $ "  Expected: Counter2 {count = 1, name = \"Test Counter\"}"
  putStrLn $ "  PASS: " ++ show (result1 == Counter2 { count = 1, name = "Test Counter" })
  putStrLn ""
  
  -- Test 2: Increment from non-zero
  let counter2 = Counter2 { count = 42, name = "Answer" }
  let result2 = incrCounter2 counter2
  putStrLn $ "Test 2: " ++ name counter2
  putStrLn $ "  Before: " ++ show counter2
  putStrLn $ "  After:  " ++ show result2
  putStrLn $ "  Expected: Counter2 {count = 43, name = \"Answer\"}"
  putStrLn $ "  PASS: " ++ show (result2 == Counter2 { count = 43, name = "Answer" })
  putStrLn ""
  
  -- Test 3: Increment multiple times
  let counter3 = Counter2 { count = 0, name = "Multi" }
  let result3 = incrCounter2 (incrCounter2 (incrCounter2 counter3))
  putStrLn $ "Test 3: " ++ name counter3 ++ " (increment 3 times)"
  putStrLn $ "  Before: " ++ show counter3
  putStrLn $ "  After:  " ++ show result3
  putStrLn $ "  Expected: Counter2 {count = 3, name = \"Multi\"}"
  putStrLn $ "  PASS: " ++ show (result3 == Counter2 { count = 3, name = "Multi" })
  putStrLn ""
  
  putStrLn "All tests completed!"
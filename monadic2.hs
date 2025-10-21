-- apply function; <*> :: f (a -> b) -> f a -> f b
--  in the f universe
-- 

x = Just 1
y = Just 2

add :: Int -> Int -> Int
add a b = a + b

-- add x y errors!

splitByComma :: String -> [String]
safeIndex :: Int -> [a] -> Maybe a -- monadic
getFirstNChars :: Int -> String -> Maybe String -- monadic
strToInt :: String -> Maybe Int -- monadic
fourYearsAfter :: Int -> Int

expectedGradYear :: String -> Maybe Int
-- "2026-12345, PERFECT, STUDENT"

-- Using multiunvierse approach (instead of cases)
-- source universe -> pure -> target universe 


-- pure way
pure :: Applicative f => a -> f a
maybeSquare :: Maybe Int -> Maybe Int 
a = pure 150
b = maybeSquare a -- if a is pure, then a must be Maybe Int (type inference)


-- apply way / fmap way
apply :: Applicative f => f (a -> b) -> f a -> f b
fmap :: Functor f => (a -> b) -> f a -> f b
-- a and b are in same target universe f
lift :: (a -> b) -> (f a -> f b)
-- returns higher order function; 
-- original universe -> fmap/lift -> target universe f

-- isOdd :: Int -> Bool
-- isOdd <$> Just 1 -> fmap isOdd (Just 1)
-- Just 1 <&> isOdd -> fmap (Just 1) & isOdd
-- Just isOdd <*> Just 1 -> apply isOdd Just 1

fmap fn x = apply (pure fn) x
fmap fn y = pure fn <*> y


bind :: Monad m => m a -> (a -> m b) -> m b -- universe crossing function (monadic function) (>>=)
-- m a & a -> m b => bind => m b 
-- target universe (m a) -> unwrap -> source universe (a) -> (a -> m b) -> target universe (m b)

toCS150Grade :: Int -> Maybe String 

flippedBind:: Monad m => (a -> mb) -> m a -> m b -- operate on the same universe (=<<)

Just 150 -- unwrap Just 150 -> 150, passed to Int -> Maybe Int -> Maybe 150 * 2 + 1
 >>= (\x -> Just x * 2)
 >>= (\x -> Just x + 1) -- Just 301

Just 150 -- unwrap Just 150 -> 150, passed to Int -> Maybe Int -> Nothing (Shortcircuiting behavior, early exit)
 >>= (\x -> Just x * 2)
 >>= (\x -> Nothing)
 >>= (\x -> Just x + 1) -- Just 301
-- if that's the behavior we want then it makes sense that we operate in the Maybe universe

monadicExpectedGradYear S =
    S 
      & splitbyComma 
      & safeIndex 
      >>= getFirstNChars
      >>= strTOInt
      <&> fourYearsAfter

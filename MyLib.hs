module MyLib (someFunc) where

-- https://stackoverflow.com/questions/42708132/haskell-find-the-nth-root-of-a-float
nroot :: (Integral a, Floating b) => a -> b -> b
n `nroot` x = x ** (1 / fromIntegral n)

dx :: Double
dx = 0.000001 -- dx estimate

inf :: Double
inf = 10000 -- inf estimate for infinate integrals

square_x_test :: Double -> Double
square_x_test x = x*x

do_integral :: (Ord p, Num p) => (p -> p) -> p -> p -> p -> p
do_integral f start end dx
  | end <= start = 0
  | otherwise = (height * dx) + do_integral f (start + dx) end dx
    where
      height = f start

-- intg f lower upper dx =

someFunc :: IO ()
someFunc = putStrLn (show (do_integral (^3) 1 5 dx))

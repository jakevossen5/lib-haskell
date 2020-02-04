module MyLib (nroot
             , do_integral
             ) where

-- https://stackoverflow.com/questions/42708132/haskell-find-the-nth-root-of-a-float
nroot :: (Integral a, Floating b) => a -> b -> b
n `nroot` x = x ** (1 / fromIntegral n)

dx :: Double
dx = 0.000001 -- dx estimate

inf :: Double
inf = 10000 -- inf estimate for infinate integrals

square_x_test :: Double -> Double
square_x_test x = x*x

do_integral :: (Ord p, Num p, Fractional p, Enum p) => (p -> p) -> p -> p -> p -> p
do_integral f start end dx =  (* dx) . sum . map f . takeWhile (<= end) . iterate (+ dx) $ start + dx/2

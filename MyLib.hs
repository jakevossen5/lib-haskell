module MyLib (someFunc) where

-- https://stackoverflow.com/questions/42708132/haskell-find-the-nth-root-of-a-float
nroot :: (Integral a, Floating b) => a -> b -> b
n `nroot` x = x ** (1 / fromIntegral n)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

take1 :: Int -> [t] -> [t]
take1 _ [] = []
take1 0 _ = []
take1 n (a:as) = a : take1 (n-1) as

drop1 :: Int -> [t] -> [t]
drop1 _ [] = []
drop1 0 as = as
drop1 n (a:as) = drop (n-1) as

zip1 :: [t] -> [u] -> [(t,u)]
zip1 [] _ = []
zip1 _ [] = []
zip1 (a:as) (b:bs) = (a,b) : zip1 as bs

sieve :: [Int] -> [Int]
sieve (a:as) = a : sieve[x|x<-as, mod x a /= 0]
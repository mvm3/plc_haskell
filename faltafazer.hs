lista = [["ab", "bb", "cb", "db"], ["cb", "db" , "bb", "ab"], ["ab", "bb", "cb", "db"]]
listwrwe = [(0, "ab"),(1, "bb"),(2, "cb"),(3, "db"),(0,"cb"),(1,"db"),(2,"bb"),(3,"ab"),(0,"ab"),(1,"bb"),(2,"cb"),(3,"db")]

zippador :: [[String]] -> [[(Int, String)]]
zippador [] = []
zippador (a:as) = zip [0..length(a)] a : zippador as
        
concat' :: [[String]] -> [(Int, String)]
concat' (a:as) = concat (zippador (a:as))

vence :: Int -> [(Int, String)] -> [String]
vence n [] = []
vence n ((a,b):cd) | a==n = b : vence n cd
                   | otherwise = vence n cd
            



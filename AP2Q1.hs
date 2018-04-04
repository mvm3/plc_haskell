fu :: Double -> Double
fu x = (x^2)-3 

derivarda :: (Double -> Double) -> Double -> Double
derivarda f x0 = (f(x0 + 1e-6) - f(x0)) / 1e-6

fn :: (Double -> Double) -> Double -> Double
fn f x = x - (f(x) / derivarda f (x))

bx :: (Double -> Double) -> Double -> Double -> Double
bx f x eps | abs (fn f x - x) < eps = fn f x
           | otherwise = bx f (fn f x) eps
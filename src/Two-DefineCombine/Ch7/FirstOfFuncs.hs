module FirstOfFuncs where

myNum :: Integer
myNum = 1


myVal x = myNum


myThang :: Integer -> String
myThang 9 = "waht" 
myThang 3 = "three"

bindExp :: Integer -> String
bindExp x = let y = 5 in
              "the integer was: " ++ show x
              ++ " and y was: " ++ show y

-- **

addOneIfOdd :: Integral a => a -> a
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = \n -> n + 1

-- **

addFive :: (Ord a, Num a) => a -> a -> a
addFive = \x -> \y -> (if x > y then y else x) + 5

-- **

mFlip f x y = f y x

-- **

isItTwo :: (Num a, Eq a) => a -> Bool
isItTwo 2 = True
isItTwo _ = False

-- **

data Switch = On
            | Off

switchStatus :: Switch -> String
switchStatus On = "The Switch is On."
switchStatus Off = "The Switch is Off."

machineStandby :: String -> String
machineStandby status = case status == switchStatus On of
  True -> "The machine will run at 3.8GhZ and be ready for cycles."
  False -> "The machine will be in idle state and inactive."

cycling :: Fractional a => Switch -> a
cycling On = 7 * 0.078328
cycling Off = error "The switch is off. It will not cycle."

-- ** 
  

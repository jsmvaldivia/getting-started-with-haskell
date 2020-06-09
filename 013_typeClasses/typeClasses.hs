-- did I read interfaces somewhere?
-- :t to get the type in ghci
-- :info to get type class definition

-- int division is not in Num because it is not defined on all cases

class Describable a where
  describe :: a -> String

data Icecream = Chocolate | Vanilla deriving (Show, Eq, Ord)

cycleSucc :: (Bounded a,Enum a, Eq a) => a -> a
cycleSucc n = if n == maxBound
              then minBound
              else succ n
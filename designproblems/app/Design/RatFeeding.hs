module Design.RatFeeding where

data Health = Healty | Sick deriving (Eq, Show)
data Rat = Rat { ratName :: !String, ratHealth :: !Health } deriving (Eq, Show)

data RatFeeder = RatFeeder { sick    :: !(Int, [Rat]) 
                           , healthy :: !(Int, [Rat])
                           } deriving (Eq, Show)

addRat :: Rat -> RatFeeder -> RatFeeder 
addRat rat feeder = case ratHealth rat of 
    Healty -> feeder { healthy = rat : healthy feeder }
    Sick   -> feeder { sick    = rat : sick    feeder }


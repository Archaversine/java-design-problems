module Design.BloodSugar where

import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as HashMap

type Food = String 
type BloodSugarLevel = Double
type BloodSugarDatabase = HashMap Food BloodSugarLevel

addFood :: Food -> BloodSugarLevel -> BloodSugarDatabase -> BloodSugarDatabase
addFood = HashMap.insert

getBloodSugarLevel :: Food -> BloodSugarDatabase -> Maybe BloodSugarLevel
getBloodSugarLevel = HashMap.lookup



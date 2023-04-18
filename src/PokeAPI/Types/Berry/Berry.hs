module PokeAPI.Types.Berry.Berry where

import GHC.Generics
import Data.Text (Text)
import Data.Aeson (FromJSON)

import PokeAPI.Types.Utility.NamedAPIResource as NamedAPIResource

data Berry = Berry
    { id :: Int
    , name :: Text
    , growthTime :: Int
    , maxHarvest :: Int
    , naturalGiftPower :: Int
    , size :: Int
    , smoothness :: Int
    , soilDryness :: Int
    , firmness :: NamedAPIResource
    , flavors :: [BerryFlavorMap]
    , item :: NamedAPIResource
    , naturalGiftType :: NamedAPIResource
    } deriving (Generic, Show, Eq)

instance FromJSON Berry

data BerryFlavorMap = BerryFlavorMap
    { potency :: Int
    , flavor :: NamedAPIResource
    } deriving (Generic, Show, Eq)

instance FromJSON BerryFlavorMap

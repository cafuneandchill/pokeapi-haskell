module PokeAPI.Types.Berry.BerryFlavor where

import GHC.Generics
import Data.Text (Text)
import Data.Aeson (FromJSON)

import PokeAPI.Types.Utility.NamedAPIResource as NamedAPIResource
import PokeAPI.Types.Utility.Name as Name

data BerryFlavor = BerryFlavor
    { id :: Int
    , name :: Text
    , berries :: [FlavorBerryMap]
    , contestType :: NamedAPIResource
    , names :: [Name]
    } deriving (Generic, Show, Eq)

instance FromJSON BerryFlavor

data FlavorBerryMap = FlavorBerryMap
    { potency :: Int
    , berry :: NamedAPIResource
    } deriving (Generic, Show, Eq)

instance FromJSON FlavorBerryMap
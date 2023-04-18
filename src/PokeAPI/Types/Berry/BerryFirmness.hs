module PokeAPI.Types.Berry.BerryFirmness where

import GHC.Generics
import Data.Text (Text)
import Data.Aeson (FromJSON)

import PokeAPI.Types.Utility.NamedAPIResource as NamedAPIResource
import PokeAPI.Types.Utility.Name as Name

data BerryFirmness = BerryFirmness
    { id :: Int
    , name :: Text
    , berries :: [NamedAPIResource]
    , names :: [Name]
    } deriving (Generic, Show, Eq)

instance FromJSON BerryFirmness

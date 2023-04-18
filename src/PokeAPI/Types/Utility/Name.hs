module PokeAPI.Types.Utility.Name where

import GHC.Generics
import Data.Text (Text)
import Data.Aeson (FromJSON)

import PokeAPI.Types.Utility.NamedAPIResource as NamedAPIResource

data Name = Name
    { name :: Text
    , language :: NamedAPIResource
    } deriving (Generic, Show, Eq)

instance FromJSON Name

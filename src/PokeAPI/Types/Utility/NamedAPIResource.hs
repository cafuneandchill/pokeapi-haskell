module PokeAPI.Types.Utility.NamedAPIResource where

import GHC.Generics
import Data.Text (Text)
import Data.Aeson (FromJSON)

data NamedAPIResource = NamedAPIResource
    { name :: Text
    , url :: Text
    } deriving (Generic, Show, Eq)

instance FromJSON NamedAPIResource

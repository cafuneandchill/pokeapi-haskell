module PokeAPI
    ( 
    ) where

import Network.API.Builder as API

import Data.Text (Text)


builder :: Builder
builder = basicBuilder "PokeAPI" "https://pokeapi.co/api/v2"

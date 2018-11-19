module Main where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)
import Types (SomeRec, ADT(..))
import Foreign (callJS)

someData :: Array SomeRec
someData = [ { id: 0, field: A }
            , { id: 1, field: C }
            , { id: 2, field: B }
            , { id: 3, field: B }
  ]

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log "Hello sailor!"
  callJS someData

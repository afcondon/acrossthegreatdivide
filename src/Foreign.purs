module Foreign where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Uncurried (EffFn1, runEffFn1)
import Types (SomeRec)

foreign import javascriptFn :: forall eff. EffFn1 (console::CONSOLE|eff) (Array SomeRec) Unit

callJS :: forall eff. Array SomeRec -> Eff (console::CONSOLE|eff) Unit
callJS somedata = runEffFn1 javascriptFn somedata

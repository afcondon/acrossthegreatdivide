module Case where

import Types

lookup :: forall r. { field :: ADT | r } -> String
lookup x =
  case x.field of
    A -> "Alpha"
    B -> "Beta"
    C -> "Gamma"

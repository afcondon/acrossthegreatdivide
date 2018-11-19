module Types where

data ADT = A | B | C
type SomeRec = {
    id :: Int
  , field :: ADT
}

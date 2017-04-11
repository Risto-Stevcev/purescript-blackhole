module Blackhole where

-- | An uninhabitable type similar to Void
foreign import data Blackhole ∷ Type

foreign import mkBlackhole ∷ ∀ a. (a → Blackhole) → Blackhole

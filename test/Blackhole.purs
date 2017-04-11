module Test.Blackhole where

import Prelude (($>), pure, unit)
import Blackhole (Blackhole, mkBlackhole)
import Data.Identity (Identity(Identity))
import Data.Exists (Exists, mkExists)
import Data.Void (absurd)
import Control.Monad.Eff (Eff)


vacuous ∷ Blackhole
vacuous = mkBlackhole absurd


main ∷ ∀ e. Eff e (Exists Identity)
main = pure unit $> mkExists (Identity vacuous)

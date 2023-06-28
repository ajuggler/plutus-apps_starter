{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE DeriveAnyClass        #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE ScopedTypeVariables   #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeApplications      #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE TypeOperators         #-}

module AlwaysSucceeds where

import PlutusTx
-- import PlutusTx.Prelude
import qualified Plutus.Script.Utils.V2.Scripts  as Scripts
-- import qualified Ledger                 as L
import           Plutus.V2.Ledger.Api
-- import           Plutus.V2.Ledger.Contexts as V2LC
-- import           Plutus.Script.Utils.V2.Typed.Scripts.Validators as V2V


{-# INLINABLE mkValidator #-}
mkValidator :: BuiltinData -> BuiltinData -> BuiltinData -> ()
mkValidator _ _ _ = ()

validator :: Scripts.Validator
validator = mkValidatorScript $$(PlutusTx.compile [|| mkValidator ||])

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
module TH where

import Language.Haskell.TH
import Language.Haskell.TH.Syntax

createTypSynA :: DecsQ
createTypSynA = return $ (tySynD "A" [] (pure $ LitT (StrTyLit ("a" :: String)))) : []

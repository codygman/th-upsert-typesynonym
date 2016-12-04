{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
module TH where

import Language.Haskell.TH
import Language.Haskell.TH.Syntax

-- | Creates `Type A = String` Type Synonym at compile time unless it already exists
createTypSynA :: DecsQ
createTypSynA = return $ (tySynD "A" [] (pure $ LitT (StrTyLit ("a" :: String)))) : []

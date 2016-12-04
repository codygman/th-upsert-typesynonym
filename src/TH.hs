{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
module TH where

import Language.Haskell.TH
import Language.Haskell.TH.Syntax

-- | Creates `Type A = String` Type Synonym at compile time unless it already exists
createTypSynA :: DecsQ
createTypSynA = return $ (tySynD "A" [] (pure $ LitT (StrTyLit ("a" :: String)))) : []

-- current type error:
{-
src/TH.hs:11:17: warning: [-Wdeferred-type-errors] …
    • Couldn't match type ‘Q Dec’ with ‘Dec’
      Expected type: DecsQ
        Actual type: Q [DecQ]
    • In the expression:
        return
        $ (tySynD "A" [] (pure $ LitT (StrTyLit ("a" :: String)))) : []
      In an equation for ‘createTypSynA’:
          createTypSynA
            = return
              $ (tySynD "A" [] (pure $ LitT (StrTyLit ("a" :: String)))) : []
src/TH.hs:11:17: warning: [-Wdeferred-type-errors] …
    • Couldn't match type ‘Q Dec’ with ‘Dec’
      Expected type: DecsQ
        Actual type: Q [DecQ]
    • In the expression:
        return
        $ (tySynD "A" [] (pure $ LitT (StrTyLit ("a" :: String)))) : []
      In an equation for ‘createTypSynA’:
          createTypSynA
            = return
              $ (tySynD "A" [] (pure $ LitT (StrTyLit ("a" :: String)))) : []
-}

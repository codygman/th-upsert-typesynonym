{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
module TH where

import Language.Haskell.TH
import Language.Haskell.TH.Syntax

createTypSynA :: DecsQ
createTypSynA = do
  nm <- (lookupValueName "A")
  case nm of
    Just _ -> error "test"
    Nothing -> [d| type A = String |]

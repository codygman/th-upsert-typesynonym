{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
module TH where

import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import Debug.Trace

createTypSyn :: Name -> DecsQ
createTypSyn n = do
  let name = mkName n
  [d| type $name = String |]

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
module TH where

import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import Debug.Trace

createTypSyn :: String -> DecsQ
createTypSyn n = do
  mNm <- lookupTypeName n
  case mNm of
    Just _ -> pure []
    Nothing -> (:[]) <$> tySynD (mkName n) [] [t|String|]

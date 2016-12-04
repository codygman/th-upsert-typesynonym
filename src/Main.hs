{-# LANGUAGE TemplateHaskell #-}
module Main where

import TH

createTypSyn "A"
-- second invocation should do nothing
-- createTypSynA


main :: IO ()
main = do
  putStrLn "hello world"

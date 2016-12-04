{-# LANGUAGE TemplateHaskell #-}
module Main where

import TH

createTypSynA
-- second invocation should do nothing
-- createTypSynA


main :: IO ()
main = do
  putStrLn "hello world"

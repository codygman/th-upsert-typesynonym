{-# LANGUAGE TemplateHaskell #-}
module Main where

import TH

createTypSyn "A"
createTypSyn "B"
createTypSyn "C"
-- second invocation should do nothing
createTypSyn "A"
createTypSyn "A"
createTypSyn "A"
createTypSyn "A"
createTypSyn "A"
createTypSyn "A"


main :: IO ()
main = do
  putStrLn "hello world"

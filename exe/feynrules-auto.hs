module Main where

import System.Console.CmdArgs

import HEP.Automation.FeynRules.ProgType
import HEP.Automation.FeynRules.Command

main :: IO () 
main = do 
  putStrLn "feynrules-auto"
  param <- cmdArgs mode

  commandLineProcess param
module HEP.Automation.FeynRules.Command where

import HEP.Automation.FeynRules.Type
import HEP.Automation.FeynRules.Job

commandLineProcess :: Feynrules_auto -> IO ()
commandLineProcess Test = do 
  putStrLn "test called"
  startJob

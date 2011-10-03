module HEP.Automation.FeynRules.Command where

import HEP.Automation.FeynRules.ProgType
import HEP.Automation.FeynRules.Job

commandLineProcess :: Feynrules_auto -> IO ()
commandLineProcess Test = do 
  putStrLn "test called"
  startJob

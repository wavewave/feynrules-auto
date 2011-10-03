module HEP.Automation.FeynRules.Command where

import HEP.Automation.FeynRules.ProgType
import HEP.Automation.FeynRules.Job
import HEP.Automation.FeynRules.Type 
import HEP.Automation.FeynRules.Config

-- testfrdir = FeynRulesDir "~/mac/workspace/feynrules/branch/feynrules-845" 

commandLineProcess :: Feynrules_auto -> IO ()
commandLineProcess (Test c) = do 
  putStrLn "test called"

  frdir <- readConfigFile c 
  startJob frdir 

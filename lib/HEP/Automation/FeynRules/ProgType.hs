{-# LANGUAGE DeriveDataTypeable #-}

module HEP.Automation.FeynRules.ProgType where 

import System.Console.CmdArgs

data Feynrules_auto = Test { config :: FilePath 
                           } 
              deriving (Show,Data,Typeable)

test :: Feynrules_auto
test = Test { config = "test.conf" } 

mode = modes [test]


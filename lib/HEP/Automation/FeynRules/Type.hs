{-# LANGUAGE DeriveDataTypeable #-}

module HEP.Automation.FeynRules.Type where 

import System.Console.CmdArgs

data Feynrules_auto = Test 
              deriving (Show,Data,Typeable)

test :: Feynrules_auto
test = Test 

mode = modes [test]


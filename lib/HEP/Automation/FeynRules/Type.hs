module HEP.Automation.FeynRules.Type where

import System.FilePath

newtype FeynRulesDir = FeynRulesDir { unFeynRulesDir :: FilePath }
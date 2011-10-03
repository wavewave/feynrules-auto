{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module HEP.Automation.FeynRules.Type where

import System.FilePath

data FeynRulesDir = FeynRulesDir { feynRulesDir :: FilePath 
                                 , feynRulesWorkspace :: FilePath }
                    deriving (Show)

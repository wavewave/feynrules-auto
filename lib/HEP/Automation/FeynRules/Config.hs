module HEP.Automation.FeynRules.Config where

import Text.Parsec

import Control.Monad.Identity
import Control.Applicative
import Control.Exception (bracket)

import HEP.Parser.Config

import System.FilePath 
import System.IO

import HEP.Automation.FeynRules.Type

feynRulesDirParse :: ParsecT String () Identity FeynRulesDir 
feynRulesDirParse = 
  oneGroupFieldInput "feynrules" $
    FeynRulesDir <$> (oneFieldInput "basedir")
                 <*> (oneFieldInput "workspacedir")

readConfigFile :: FilePath -> IO FeynRulesDir 
readConfigFile conf = do 
  bracket (openFile conf ReadMode) hClose $ \fh -> do 
    str <- hGetContents fh 
    let r = parse (feynRulesDirParse) "" str 
    case r of 
      Right result -> do putStrLn (show result) 
                         return result 
      Left err -> error (show err) 




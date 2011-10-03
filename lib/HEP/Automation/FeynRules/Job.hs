{-# LANGUAGE ScopedTypeVariables #-}

module HEP.Automation.FeynRules.Job where

import HEP.Automation.FeynRules.Type

import System.Directory 
import System.FilePath

import Text.StringTemplate
import Text.StringTemplate.Helpers

import Paths_feynrules_auto


startJob :: FeynRulesDir -> IO () 
startJob (FeynRulesDir bdir wdir) = do 
  putStrLn "job started"
  putStrLn $ bdir 
  putStrLn $ wdir 
  tmpldir <- return . ( </> "template") =<< getDataDir
  (templates :: STGroup String) <- directoryGroup tmpldir 
  --   copyFile (tmpldir </> "ModelDriver.m.st") (wdir </> "ModelDriver.m.st")
  let frname = "test.fr"
      lname = "Ltot"
  let str = renderTemplateGroup templates
                                [ ( "FeynRulesDir", bdir ) 
                                , ( "WorkspaceDir", wdir ) 
                                , ( "frFileName", frname ) 
                                , ( "Lagrangian", lname ) 
                                ] 
                                "ModelDriver.m"
  putStrLn str 
  return () 
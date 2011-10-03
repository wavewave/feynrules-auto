(* ::Package:: *)

\$FeynRulesPath=SetDirectory["$FeynRulesDir$"];

<<FeynRules`

SetDirectory["$WorkspaceDir$"];


LoadModel["$frFileName$"]


WriteUFO[ $Lagrangian$ ] 

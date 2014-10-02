# Program: LoadMedHistory.r
#          Deal Self and Family Medical History
#          Category: Heart / Hypertension / Hyperlipidemia / Stroke / Diabete / 
#                    LiverCirrhosis / Asthma / DegenArthritis / PepticUlcer /
#					 Polyposis / Cancer / Leukemia / Other
#          1. Self
#          2. Family
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadMedHistory <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c("Heart", "Hypertension", "Hyperlipidemia", "Stroke", "Diabete", "LiverCirrhosis", "Asthma", "DegenArthritis", "PepticUlcer", 
              "Polyposis", "Cancer", "Leukemia", "Other")
  VarNameSelf = paste(VarName, "_Self", sep = "")
  VarNameFam = paste(VarName, "_Fam", sep = "")
  VarName = c(VarNameSelf,
              VarNameFam,
			  "OtherDisName")
  VarType = c(array(2,dim = c(13,1)),
              array(1,dim = c(13,1)),
			  1)
  VarXDim = c(2:10, 2:5,
              2:10, 2:5,
			  6)
  VarYDim = c(array(54,dim = c(9,1)), array(57,dim = c(4,1)),
              array(55,dim = c(9,1)), array(58,dim = c(4,1)),
			  56)
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
# Program: LoadSTAT.r
#          Deal State-Trait Anxiety Inventory (STAI)
#          1. STAI-Trait
#          2. STAI-State
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadSTAT <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c(1:20, 1:30)
  for (VarNameNum in 1:length(VarName)) {
    if (as.numeric(VarName[VarNameNum]) < 10) {
	  VarName[VarNameNum] = paste("0", VarName[VarNameNum], sep = "")
	} else {
	  VarName[VarNameNum] = VarName[VarNameNum]
	}
	if (VarNameNum <= 20) {
	  VarName[VarNameNum] = paste("State_", VarName[VarNameNum], sep = "")
	} else {
	  VarName[VarNameNum] = paste("Trait_", VarName[VarNameNum], sep = "")
	}
  }
  VarType = array(2,dim = c(50,1))
  VarXDim = rep(c(1:10), times = 5)
  VarYDim = c(array(28,dim = c(10,1)), array(30,dim = c(10,1)),
              array(33,dim = c(10,1)), array(35,dim = c(10,1)), array(37,dim = c(10,1)))
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
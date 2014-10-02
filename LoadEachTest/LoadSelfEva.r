# Program: LoadSelfEva.r
#          Deal Self-Evaluation Scale
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadSelfEva <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c(1:6)
  for (VarNameNum in 1:length(VarName)) {
    if (as.numeric(VarName[VarNameNum]) < 10) {
	  VarName[VarNameNum] = paste("0", VarName[VarNameNum], sep = "")
	} else {
	  VarName[VarNameNum] = VarName[VarNameNum]
	}
  }
  VarName = paste("SelfEva_", VarName, sep = "")
  VarType = array(2,dim = c(6,1))
  VarXDim = c(1:6)
  VarYDim = c(array(24,dim = c(6,1)))
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
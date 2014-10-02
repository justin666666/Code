# Program: LoadGDS.r
#          Deal Geriatric Depression Scale Chinese 30 items version
#
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140912 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadGDS <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c(1:30)
  for (VarNameNum in 1:length(VarName)) {
    if (as.numeric(VarName[VarNameNum]) < 10) {
	  VarName[VarNameNum] = paste("0", VarName[VarNameNum], sep = "")
	} else {
	  VarName[VarNameNum] = VarName[VarNameNum]
	}
  }
  VarName = paste("GDS_", VarName, sep = "")
  VarType = array(2,dim = c(30,1))
  VarXDim = c(1:10, 1:10, 1:10)
  VarYDim = c(array(17,dim = c(10,1)), array(19,dim = c(10,1)), array(21,dim = c(10,1)))
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
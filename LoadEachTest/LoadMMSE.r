# Program: LoadMMSE.r
#          Deal MMSE
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadMMSE <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c(1:10, 1:3, 1:5, 1:5, 1:3, 1:2, 16, 1:3, 18:20)
  for (VarNameNum in 1:length(VarName)) {
    if (VarNameNum < 10) {
	  VarName[VarNameNum] = paste("0", VarName[VarNameNum], sep = "")
    } else if (VarNameNum == 10) {
	  VarName[VarNameNum] = VarName[VarNameNum]
	} else if (VarNameNum <= 13) {
	  VarName[VarNameNum] = paste("11d", VarName[VarNameNum], sep = "")
	} else if (VarNameNum <= 18) {
	  VarName[VarNameNum] = paste("12d", VarName[VarNameNum], sep = "")
	} else if (VarNameNum <= 23) {
	  VarName[VarNameNum] = paste("13d", VarName[VarNameNum], sep = "")
	} else if (VarNameNum <= 26) {
	  VarName[VarNameNum] = paste("14d", VarName[VarNameNum], sep = "")
	} else if (VarNameNum <= 28) {
	  VarName[VarNameNum] = paste("15d", VarName[VarNameNum], sep = "")
	} else if (VarNameNum == 29) {
	  VarName[VarNameNum] = VarName[VarNameNum]
	} else if (VarNameNum <= 32) {
	  VarName[VarNameNum] = paste("17d", VarName[VarNameNum], sep = "")
	}
  }
  VarName = paste("MMSE_", VarName, sep = "")
  VarType = c(array(2,dim = c(35,1)))
  VarXDim = c(1:10, 1:10, 1:10, 1:5)
  VarYDim = c(array(72,dim = c(10,1)), array(74,dim = c(10,1)),
              array(76,dim = c(10,1)), array(78,dim = c(5,1)))
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
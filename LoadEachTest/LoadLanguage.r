# Program: LoadLanguage.r
#          Deal Language
#          1. First Language / Speech / Read / Write / Listen
#          2. Second Language / Speech / Read / Write / Listen
#          3. Third Language / Speech / Read / Write / Listen
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
# 141013 skylikewater - fix Y coordination
#

LoadLanguage <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c("", "_Speech", "_Read", "_Write", "_Listen")
  for (VarLanNum in 1:3) {
    if (VarLanNum == 1) {
      VarNameTemp = paste(as.character(VarLanNum), VarName, sep = "")
	} else {
	  VarNameTempNow = paste(as.character(VarLanNum), VarName, sep = "")
	  VarNameTemp = c(VarNameTemp, VarNameTempNow)
	}
  }
  VarName = paste("Lan", VarNameTemp, sep = "")
  VarType = c(array(1,dim = c(15,1)))
  VarXDim = c(1:5, 1:5, 1:5)
  VarYDim = c(array(47,dim = c(5,1)), array(49,dim = c(5,1)), array(51,dim = c(5,1)))
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
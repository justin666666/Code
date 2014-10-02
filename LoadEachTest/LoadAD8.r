# Program: LoadAD8.r
#          Deal AD8
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadAD8 <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c("AD8")
  VarType = c(2)
  VarXDim = c(1)
  VarYDim = c(39)
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
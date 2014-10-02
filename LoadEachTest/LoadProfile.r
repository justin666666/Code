# Program: LoadProfile.r
#          Deal Profile
#          Subj. number / name / sex
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadProfile <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c("Num", "Name", "Sex", "AgeYr")
  VarType = c(2, 1, 1, 2)
  VarXDim = c(0, 1, 2, 3)
  VarYDim = c(0, 2, 2, 2)
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
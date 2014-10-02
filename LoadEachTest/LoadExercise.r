# Program: LoadExercise.r
#          Deal Exercise
#          Regular / Frequency / Duration / Strength
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadExercise <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c("Exer_Regu", "Exer_Freq", "Exer_Dura", "Exer_Strength")
  VarType = c(1, 1, 1, 1)
  VarXDim = c(1, 2, 3, 4)
  VarYDim = c(66, 66, 66, 66)
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
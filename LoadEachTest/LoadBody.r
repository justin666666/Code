# Program: LoadBody.r
#          Deal Body parameter
#          Height / Weight / BMI / BodyFat / BodyFatCri / InternalFat / Internal Fat / Waistline
#
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140902 skylikewater - first release
# 141001 skylikewater - add criteria
# 141002 skylikewater - reconstruction
#

LoadBody <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c("Height", "Weight", "BMI", "FatCri",
              "BodyFat", "BodyFatCri", "InternalFat", "InternalFatCri",
			  "Waistline", "WaistlineCri")
  VarType = c(2, 2, 2, 1,
              2, 1, 2, 1,
			  2, 1)
  VarXDim = c(1, 2, 0, 0,
              3, 0, 4, 0,
			  5, 0)
  VarYDim = c(5, 5, 0, 0,
              5, 0, 5, 0,
			  5, 0)
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
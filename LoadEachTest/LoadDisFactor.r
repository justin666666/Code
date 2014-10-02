# Program: LoadDisFactor.r
#          Deal Disorder Factor
#          ####################################
#          ######   Need special deal    ######
#          ####################################
#          1. SmokeNow / SmokeNowAmount / SmokeNowDura /
#             SmokePast / SmokePastAmount / SmokePastDura
#          2. Drink
#          3. ArecaNow / ArecaNowAmount / ArecaNowDura /
#             ArecaPast / ArecaPastAmount / ArecaPastDura
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadDisFactor <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')
  
  VarName = c("SmokeNow", "SmokeNowAmount", "SmokeNowDura",
	          "SmokePast", "SmokePastAmount", "SmokePastDura",
			  "Drink",
			  "ArecaNow", "ArecaNowAmount", "ArecaNowDura",
			  "ArecaPast", "ArecaPastAmount", "ArecaPastDura")
  VarType = c(1, 1, 2,
              1, 1, 2,
			  1,
			  1, 1, 2,
			  1, 1, 2)
  VarXDim = c(1, 2, 3,
              4, 5, 6,
			  7,
			  1, 2, 3,
              4, 5, 6)
  VarYDim = c(61, 61, 61,
              61, 61, 61,
			  61,
			  63, 63, 63,
			  63, 63, 63)
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
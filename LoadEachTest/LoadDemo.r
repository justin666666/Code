# Program: LoadDemo.r
#          Deal Demographic
#          Mailing / Edu / EduYr / Marry / Ethnic / HouseStyle / CareerStatus / Career / CareerLoad / CareerSpouse
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - finished all component
#

LoadDemo <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c("ColorBlind", "Mailing", "Edu", "EduYr", "Marry", "MarryOther", "Ethnic", "EthnicOther",
              "HouseStyle", "HouseStyleOther", "LiveAlone", "CareerStatus", "RetireYr", "Career", "CareerLoad", "CareerSpouse")
  VarType = c(2, 1, 1, 2, 1, 1, 1, 1,
              1, 1, 1, 1, 2, 1, 1, 1)
  VarXDim = c(1:8, 1:8)
  VarYDim = c(array(42,dim = c(8,1)), array(44,dim = c(8,1)))
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
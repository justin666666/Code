# Program: LoadDiet.r
#          Deal Diet
#          Starch / Egg / Bean / Meat / Fish / Milk / Vegetable / Fruit / Fat / Sugar or Drink
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadDiet <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c("Starch", "Egg", "Diet_Bean", "Diet_Meat", "Diet_Fish", "Diet_Milk", "Diet_Vegetable", "Diet_Fruit", "Diet_Fat", "Diet_Sugar")
  VarName = paste("Diet_", VarName, sep = "")
  VarType = c(array(1,dim = c(10,1)))
  VarXDim = c(1:10)
  VarYDim = c(array(69,dim = c(10,1)))
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
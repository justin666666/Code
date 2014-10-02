# Program: LoadHandiness.r
#          Deal Handiness
#          1. Self / Dad/ Mom/ MomDad / MomMom / DadDad / DadMom
#          2. Write / Draw / Pitch / Scissor / Brush / Knife / Spoon / Broom / Lighter / Box / Kick / EyeMajor
#          3. SibLeft / SibRight / ChildLeft / ChildRight
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140909 skylikewater - first release
# 141002 skylikewater - reconstruction
#

LoadHandiness <- function(Task, CodingNum, LoadTaskPath) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum
  
  setwd(LoadTaskPath)
  source('LoadTask.r', encoding = 'utf-8')

  VarName = c("Self", "Dad", "Mom", "MomDad", "MomMom", "DadDad", "DadMom",
              "Write", "Draw", "Pitch", "Scissor", "Brush", "Knife",
			  "Spoon", "Broom", "Lighter", "Box", "Kick", "EyeMajor",
			  "SibLeft", "SibRight", "ChildLeft", "ChildRight")
  VarName = paste("Hand_", VarName, sep = "")
  VarType = c(array(1,dim = c(7,1)),
              array(1,dim = c(6,1)),
			  array(1,dim = c(6,1)),
              array(2,dim = c(4,1)))
  VarXDim = c(1:7,
              1:6,
			  1:6,
			  1:4)
  VarYDim = c(array(8,dim = c(7,1)),
              array(10,dim = c(6,1)),
			  array(12,dim = c(6,1)),
			  array(14,dim = c(4,1)))
  
  Results = LoadTask(Task, CodingNum, VarName, VarType, VarXDim, VarYDim)
  return(Results)
}
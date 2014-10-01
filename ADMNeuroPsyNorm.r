# Program: ADMNeuroPsyNorm.r
#          Calculation and Norm reference
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140918 skylikewater - first release
#

#ADMNeuroPsyNorm <- function(CodingSheetFolderPath) {
  # You should change to your path.
  CodingSheetFolderPath = 'D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data\\CodingSheetCSV'

  Now12 = 140929170742
  LatestCodingNum = 123 # get latest coding done
  
  # You should change to your path.
  ResultFolderPath = 'D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data'
  setwd(ResultFolderPath)
  load(paste("ADMNeuroPsy", Now12, ".rdata", sep = ""))
  
  # Profile
  Sex = as.character(Data$Sex)
    Sex[Sex == "女"] = 0
    Sex[Sex == "男"] = 1
    Sex = as.numeric(Sex)
  AgeYr = as.numeric(as.character(Data$AgeYr))
  EduYr = as.numeric(as.character(Data$EduYr))
  
  # Handiness
  HandList = c("Hand_Write", "Hand_Draw", "Hand_Pitch", "Hand_Scissor", "Hand_Brush", "Hand_Knife", "Hand_Spoon", "Hand_Broom", "Hand_Lighter", "Hand_Box", "Hand_Kick", "Hand_EyeMajor")
  for (VarNum in 1:length(HandList)) {
    DeclareStr = paste(HandList[VarNum], " = as.character(Data$", HandList[VarNum], ")", sep = "")
	eval(parse(text = DeclareStr))
	ConditionStr = paste(HandList[VarNum], "[", HandList[VarNum], " == ", sep = "")
	eval(parse(text = paste(ConditionStr, "'只用左從未用右'] = -2", sep = "")))
	eval(parse(text = paste(ConditionStr, "'喜歡用左'] = -1", sep = "")))
	eval(parse(text = paste(ConditionStr, "'無慣用'] = 0", sep = "")))
	eval(parse(text = paste(ConditionStr, "'喜歡用右'] = 1", sep = "")))
	eval(parse(text = paste(ConditionStr, "'只用右從未用左'] = 2", sep = "")))
	
	if (VarNum == 1) {
	  AddStr = HandList[VarNum]
	} else {
      AddStr = paste(AddStr, " + ", HandList[VarNum], sep = "")
	}
  }
  eval(parse(text = paste("Sum = ", AddStr, sep = "")))
  
  
  
  write.csv(Data, file = paste("ADMNeuroPsy",Now12,".csv",sep=""))
  save(Data, file = paste("ADMNeuroPsy",Now12,".rdata",sep=""))
#}
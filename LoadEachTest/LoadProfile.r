# Program: LoadProfile.r
#          Deal Profile
#          Subj. number / name / sex
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadProfile <- function(Task, NowCodingNum) {
  # load pryr package
  #library(pryr)

  #SubTestStr = 'Profile'
  #if (NowCodingNum < 10) {
  #  NowCodingStr = paste("00", as.character(NowCodingNum), sep = "")
  #} else if (NowCodingNum < 100) {
  #  NowCodingStr = paste("0", as.character(NowCodingNum), sep = "")
  #} else if (NowCodingNum < 1000) {
  #  NowCodingStr = as.character(NowCodingNum)
  #}
  
  if (Task == 1) {
    # create class
    #setClass("Profile", representation(Num = "numeric", Name = "character", Sex = "character", AgeYr = "numeric", EduYr = "numeric"))

	# create method
	#setMethod("show", "Profile",
	#           function(object) {
	#		     print(paste(object@Num, object@Name, object@Sex, object@AgeYr, object@EduYr, sep = ","))
	#		   }
	#		 )

    Num <<- array(0,dim = c(LatestCodingNum,1))
    Name <<- rep("",times = LatestCodingNum)
    Sex <<- rep("",times = LatestCodingNum)
	AgeYr <<- array(0,dim = c(LatestCodingNum,1)) 
	#EduCheckYr <<- array(0,dim = c(LatestCodingNum,1))
  } else if (Task == 2) {
    # Declaration 
    #Declared = paste("S", NowCodingStr, SubTestStr, " = new('", SubTestStr, "')", sep = "")
    #eval(parse(text = Declared))
	
    # Read
	#NumStr = paste("S", NowCodingStr, SubTestStr, "@Num = NowCodingNum", sep = "")
	#eval(parse(text = NumStr))
	#NameStr = paste("S", NowCodingStr, SubTestStr, "@Name = as.character(DataTemp$V1[2])", sep = "")
	#eval(parse(text = NameStr))
	#SexStr = paste("S", NowCodingStr, SubTestStr, "@Sex = as.character(DataTemp$V2[2])", sep = "")
	#eval(parse(text = SexStr))
	#AgeYrStr = paste("S", NowCodingStr, SubTestStr, "@AgeYr = as.numeric(as.character(DataTemp$V3[2]))", sep = "")
	#eval(parse(text = AgeYrStr))
	#EduYrStr = paste("S", NowCodingStr, SubTestStr, "@EduYr = as.numeric(as.character(DataTemp$V4[2]))", sep = "")
	#eval(parse(text = EduYrStr))
	
    Num[NowCodingNum] <<- NowCodingNum
    Name[NowCodingNum] <<- as.character(DataTemp$V1[2])
    Sex[NowCodingNum] <<- as.character(DataTemp$V2[2])
	AgeYr[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[2]))
	#EduCheckYr[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[2]))
  } else if (Task == 3) {
    #eval(parse(text = paste("S", NowCodingStr, SubTestStr, sep = "")))
    return("Num = Num, Name = Name, Sex = Sex, AgeYr = AgeYr, ")
  }
}
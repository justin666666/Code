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

LoadDemo <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
	ColorBlind <<- array(0,dim = c(LatestCodingNum,1))
    Mailing <<- rep("",times = LatestCodingNum)
    Edu <<- rep("",times = LatestCodingNum)
    EduYr <<- array(0,dim = c(LatestCodingNum,1))
    Marry <<- rep("",times = LatestCodingNum)
	MarryOther <<- rep("",times = LatestCodingNum)
    Ethnic <<- rep("",times = LatestCodingNum)
	EthnicOther <<- rep("",times = LatestCodingNum)
    HouseStyle <<- rep("",times = LatestCodingNum)
	HouseStyleOther <<- rep("",times = LatestCodingNum)
	LiveAlone <<- rep("",times = LatestCodingNum)
    CareerStatus <<- rep("",times = LatestCodingNum)
	RetireYr <<- array(0,dim = c(LatestCodingNum,1))
    Career <<- rep("",times = LatestCodingNum)
    CareerLoad <<- rep("",times = LatestCodingNum)
    CareerSpouse <<- rep("",times = LatestCodingNum)
  } else if (Task == 2) {
    # Read
	ColorBlind[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[42]))
    Mailing[NowCodingNum] <<- as.character(DataTemp$V2[42])
    Edu[NowCodingNum] <<- as.character(DataTemp$V3[42])
    EduYr[NowCodingNum] <<- as.character(DataTemp$V4[42])
    Marry[NowCodingNum] <<- as.character(DataTemp$V5[42])
	MarryOther[NowCodingNum] <<- as.character(DataTemp$V6[42])
    Ethnic[NowCodingNum] <<- as.character(DataTemp$V7[42])
	EthnicOther[NowCodingNum] <<- as.character(DataTemp$V8[42])
    HouseStyle[NowCodingNum] <<- as.character(DataTemp$V1[44])
	HouseStyleOther[NowCodingNum] <<- as.character(DataTemp$V2[44])
	LiveAlone[NowCodingNum] <<- as.character(DataTemp$V3[44])
    CareerStatus[NowCodingNum] <<- as.character(DataTemp$V4[44])
	RetireYr[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[44]))
    Career[NowCodingNum] <<- as.character(DataTemp$V6[44])
    CareerLoad[NowCodingNum] <<- as.character(DataTemp$V7[44])
    CareerSpouse[NowCodingNum] <<- as.character(DataTemp$V8[44])
  } else if (Task == 3) {
    return("ColorBlind = ColorBlind, Mailing = Mailing, Edu = Edu, EduYr = EduYr, Marry = Marry, MarryOther = MarryOther, Ethnic = Ethnic, EthnicOther = EthnicOther, HouseStyle = HouseStyle, HouseStyleOther = HouseStyleOther, LiveAlone = LiveAlone, CareerStatus = CareerStatus, RetireYr = RetireYr, Career = Career, CareerLoad = CareerLoad, CareerSpouse = CareerSpouse, ")
  }
}
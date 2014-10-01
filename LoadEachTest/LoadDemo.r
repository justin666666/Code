# Program: LoadDemo.r
#          Deal Demographic
#          Mailing / Edu / EduYr / Marry / Ethnic / HouseStyle / CareerStatus / Career / CareerLoad / CareerSpouse
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadDemo <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    Mailing <<- rep("",times = LatestCodingNum)
    Edu <<- rep("",times = LatestCodingNum)
    EduYr <<- array(0,dim = c(LatestCodingNum,1))
    Marry <<- rep("",times = LatestCodingNum)
    Ethnic <<- rep("",times = LatestCodingNum)
    HouseStyle <<- rep("",times = LatestCodingNum)
    CareerStatus <<- rep("",times = LatestCodingNum)
    Career <<- rep("",times = LatestCodingNum)
    CareerLoad <<- rep("",times = LatestCodingNum)
    CareerSpouse <<- rep("",times = LatestCodingNum)
  } else if (Task == 2) {
    # Read
    Mailing[NowCodingNum] <<- as.character(DataTemp$V1[43])
    Edu[NowCodingNum] <<- as.character(DataTemp$V2[43])
    EduYr[NowCodingNum] <<- as.character(DataTemp$V3[43])
    Marry[NowCodingNum] <<- as.character(DataTemp$V4[43])
    Ethnic[NowCodingNum] <<- as.character(DataTemp$V5[43])
    HouseStyle[NowCodingNum] <<- as.character(DataTemp$V6[43])
    CareerStatus[NowCodingNum] <<- as.character(DataTemp$V7[43])
    Career[NowCodingNum] <<- as.character(DataTemp$V8[43])
    CareerLoad[NowCodingNum] <<- as.character(DataTemp$V9[43])
    CareerSpouse[NowCodingNum] <<- as.character(DataTemp$V10[43])
  } else if (Task == 3) {
    return("Mailing = Mailing,     Edu = Edu,     EduYr = EduYr,     Marry = Marry,     Ethnic = Ethnic,     HouseStyle = HouseStyle,     CareerStatus = CareerStatus,     Career = Career,     CareerLoad = CareerLoad,     CareerSpouse = CareerSpouse, ")
  }
}
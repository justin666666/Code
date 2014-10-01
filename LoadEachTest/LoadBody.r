# Program: LoadBody.r
#          Deal Body parameter
#          Height / Weight / BMI / BodyFat / BodyFatCri / InternalFat / Internal Fat / Waistline
#
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140902 skylikewater - first release
#

LoadBody <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration
    Height <<- array(0,dim = c(LatestCodingNum,1))
    Weight <<- array(0,dim = c(LatestCodingNum,1))
    BMI <<- array(0,dim = c(LatestCodingNum,1))
    BodyFat <<- array(0,dim = c(LatestCodingNum,1))
    BodyFatCri <<- rep("",times = LatestCodingNum)
    InternalFat <<- array(0,dim = c(LatestCodingNum,1))
    InternalFatCri <<- rep("",times = LatestCodingNum)
    Waistline <<- rep("",times = LatestCodingNum)
  } else if (Task == 2) {
    # Read
    Height[NowCodingNum] <<- as.numeric(gsub("cm", replacement = "", as.character(DataTemp$V1[5]))) # cancel cm
    Weight[NowCodingNum] <<- as.numeric(gsub("kg", replacement = "", as.character(DataTemp$V2[5]))) # cancel kg
    BMI[NowCodingNum] <<- (Weight[NowCodingNum]/(Height[NowCodingNum]/100)^2) # calculate kg/m^2 directly 
    BodyFat[NowCodingNum] <<- as.numeric(gsub("%", replacement = "", as.character(DataTemp$V4[5]))) # cancel %
    BodyFatCri[NowCodingNum] <<- as.character(DataTemp$V5[5])
    InternalFat[NowCodingNum] <<- as.numeric(gsub("%", replacement = "", as.character(DataTemp$V6[5]))) # cancel %
    InternalFatCri[NowCodingNum] <<- as.character(DataTemp$V7[5])
    Waistline[NowCodingNum] <<- as.character(DataTemp$V8[5]) # cancel "inch" in Chinese but fail, maybe Chinese limit (?)
  } else if (Task == 3) {
    return("Height = Height,     Weight = Weight,     BMI = BMI,     BodyFat = BodyFat,     BodyFatCri = BodyFatCri,     InternalFat = InternalFat,     InternalFatCri = InternalFatCri,     Waistline = Waistline, ")
  } else if (Task == 4) {
    
  }
}
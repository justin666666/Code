# Program: LoadDisFactor.r
#          Deal Disorder Factor
#          ####################################
#          ######   Need special deal    ######
#          ####################################
#          1. SmokeNow / SmokeNowAmount
#          [UNDO] SmokeNowDura / SmokePast / SmokePastAmount / SmokePastDura
#          2. Drink
#          3. ArecaNow / ArecaNowAmount
#          [UNDO] ArecaNowDura / ArecaPast / ArecaPastAmount / ArecaPastDura
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadDisFactor <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    SmokeNow <<- rep("",times = LatestCodingNum)
    SmokeNowAmount <<- rep("",times = LatestCodingNum)
      Drink <<- rep("",times = LatestCodingNum)
        ArecaNow <<- rep("",times = LatestCodingNum)
        ArecaNowAmount <<- rep("",times = LatestCodingNum)
  } else if (Task == 2) {
    # Read
    SmokeNow[NowCodingNum] <<- as.character(DataTemp$V1[66])
    SmokeNowAmount[NowCodingNum] <<- as.character(DataTemp$V2[66])
      Drink[NowCodingNum] <<- as.character(DataTemp$V3[66])
        ArecaNow[NowCodingNum] <<- as.character(DataTemp$V4[66])
        ArecaNowAmount[NowCodingNum] <<- as.character(DataTemp$V5[66])
  } else if (Task == 3) {
    return("SmokeNow = SmokeNow,     SmokeNowAmount = SmokeNowAmount,     Drink = Drink,     ArecaNow = ArecaNow,     ArecaNowAmount = ArecaNowAmount, ")
  }
}
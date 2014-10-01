# Program: LoadSelfEva.r
#          Deal Self-Evaluation Scale
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadSelfEva <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration
    SelfEva_1 <<- array(0,dim = c(LatestCodingNum,1))
    SelfEva_2 <<- array(0,dim = c(LatestCodingNum,1))
    SelfEva_3 <<- array(0,dim = c(LatestCodingNum,1))
    SelfEva_4 <<- array(0,dim = c(LatestCodingNum,1))
    SelfEva_5 <<- array(0,dim = c(LatestCodingNum,1))
    SelfEva_6 <<- array(0,dim = c(LatestCodingNum,1))
  } else if (Task == 2) {
    # Read
    SelfEva_1[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[24]))
    SelfEva_2[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[24]))
    SelfEva_3[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[24]))
    SelfEva_4[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[24]))
    SelfEva_5[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[24]))
    SelfEva_6[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[24]))
  } else if (Task == 3) {
    return("SelfEva_1 = SelfEva_1,     SelfEva_2 = SelfEva_2,     SelfEva_3 = SelfEva_3,     SelfEva_4 = SelfEva_4,     SelfEva_5 = SelfEva_5,     SelfEva_6 = SelfEva_6, ")
  }
}
# Program: LoadTMT.r
#          Deal TMT
#          A part / B part
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadTMT <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    TMT_A <<- array(0,dim = c(LatestCodingNum,1))
    TMT_B <<- array(0,dim = c(LatestCodingNum,1))
  } else if (Task == 2) {
    # Read
    TMT_A[NowCodingNum] <<- as.numeric(gsub("s", replacement = "", as.character(DataTemp$V1[111]))) # cancel s
    TMT_B[NowCodingNum] <<- as.numeric(gsub("s", replacement = "", as.character(DataTemp$V2[111]))) # cancel s
  } else if (Task == 3) {
    return("TMT_A = TMT_A, 	TMT_B = TMT_B, ")
  }
}
# Program: LoadAD8.r
#          Deal AD8
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadAD8 <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    AD8 <<- array(0,dim = c(LatestCodingNum,1))
  } else if (Task == 2) {
    # Read
    AD8[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[39]))
  } else if (Task == 3) {
    return("AD8 = AD8, ")
  }
}
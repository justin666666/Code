# Program: LoadMMSE.r
#          Deal MMSE
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadMMSE <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    MMSE_01 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_02 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_03 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_04 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_05 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_06 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_07 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_08 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_09 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_10 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_11d1 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_11d2 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_11d3 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_12d1 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_12d2 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_12d3 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_12d4 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_12d5 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_13d1 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_13d2 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_13d3 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_13d4 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_13d5 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_14d1 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_14d2 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_14d3 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_15d1 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_15d2 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_16 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_17d1 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_17d2 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_17d3 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_18 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_19 <<- array(0,dim = c(LatestCodingNum,1))
    MMSE_20 <<- array(0,dim = c(LatestCodingNum,1))
  } else if (Task == 2) {
    # Read
    MMSE_01[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[76]))
    MMSE_02[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[76]))
    MMSE_03[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[76]))
    MMSE_04[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[76]))
    MMSE_05[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[76]))
    MMSE_06[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[76]))
    MMSE_07[NowCodingNum] <<- as.numeric(as.character(DataTemp$V7[76]))
    MMSE_08[NowCodingNum] <<- as.numeric(as.character(DataTemp$V8[76]))
    MMSE_09[NowCodingNum] <<- as.numeric(as.character(DataTemp$V9[76]))
    MMSE_10[NowCodingNum] <<- as.numeric(as.character(DataTemp$V10[76]))
    MMSE_11d1[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[78]))
    MMSE_11d2[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[78]))
    MMSE_11d3[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[78]))
    MMSE_12d1[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[78]))
    MMSE_12d2[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[78]))
    MMSE_12d3[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[78]))
    MMSE_12d4[NowCodingNum] <<- as.numeric(as.character(DataTemp$V7[78]))
    MMSE_12d5[NowCodingNum] <<- as.numeric(as.character(DataTemp$V8[78]))
    MMSE_13d1[NowCodingNum] <<- as.numeric(as.character(DataTemp$V9[78]))
    MMSE_13d2[NowCodingNum] <<- as.numeric(as.character(DataTemp$V10[78]))
    MMSE_13d3[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[80]))
    MMSE_13d4[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[80]))
    MMSE_13d5[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[80]))
    MMSE_14d1[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[80]))
    MMSE_14d2[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[80]))
    MMSE_14d3[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[80]))
    MMSE_15d1[NowCodingNum] <<- as.numeric(as.character(DataTemp$V7[80]))
    MMSE_15d2[NowCodingNum] <<- as.numeric(as.character(DataTemp$V8[80]))
    MMSE_16[NowCodingNum] <<- as.numeric(as.character(DataTemp$V9[80]))
    MMSE_17d1[NowCodingNum] <<- as.numeric(as.character(DataTemp$V10[80]))
    MMSE_17d2[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[82]))
    MMSE_17d3[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[82]))
    MMSE_18[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[82]))
    MMSE_19[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[82]))
    MMSE_20[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[82]))
  } else if (Task == 3) {
    return("MMSE_01 = MMSE_01,     MMSE_02 = MMSE_02,     MMSE_03 = MMSE_03,     MMSE_04 = MMSE_04,     MMSE_05 = MMSE_05,     MMSE_06 = MMSE_06,     MMSE_07 = MMSE_07,     MMSE_08 = MMSE_08,     MMSE_09 = MMSE_09,     MMSE_10 = MMSE_10,     MMSE_11d1 = MMSE_11d1,     MMSE_11d2 = MMSE_11d2,     MMSE_11d3 = MMSE_11d3,     MMSE_12d1 = MMSE_12d1,     MMSE_12d2 = MMSE_12d2,     MMSE_12d3 = MMSE_12d3,     MMSE_12d4 = MMSE_12d4,     MMSE_12d5 = MMSE_12d5,     MMSE_13d1 = MMSE_13d1,     MMSE_13d2 = MMSE_13d2,     MMSE_13d3 = MMSE_13d3,     MMSE_13d4 = MMSE_13d4,     MMSE_13d5 = MMSE_13d5,     MMSE_14d1 = MMSE_14d1,     MMSE_14d2 = MMSE_14d2,     MMSE_14d3 = MMSE_14d3,     MMSE_15d1 = MMSE_15d1,     MMSE_15d2 = MMSE_15d2,     MMSE_16 = MMSE_16,     MMSE_17d1 = MMSE_17d1,     MMSE_17d2 = MMSE_17d2,     MMSE_17d3 = MMSE_17d3,     MMSE_18 = MMSE_18,     MMSE_19 = MMSE_19,     MMSE_20 = MMSE_20, ")
  }
}
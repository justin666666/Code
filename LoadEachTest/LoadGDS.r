# Program: LoadGDS.r
#          Deal Geriatric Depression Scale Chinese 30 items version
#
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140912 skylikewater - first release
#

LoadGDS <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration
    GDS_01 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_02 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_03 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_04 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_05 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_06 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_07 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_08 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_09 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_10 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_11 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_12 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_13 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_14 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_15 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_16 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_17 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_18 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_19 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_20 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_21 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_22 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_23 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_24 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_25 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_26 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_27 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_28 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_29 <<- array(0,dim = c(LatestCodingNum,1))
    GDS_30 <<- array(0,dim = c(LatestCodingNum,1))
  } else if (Task == 2) {
    # Read
    GDS_01[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[17]))
    GDS_02[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[17]))
    GDS_03[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[17]))
    GDS_04[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[17]))
    GDS_05[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[17]))
    GDS_06[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[17]))
    GDS_07[NowCodingNum] <<- as.numeric(as.character(DataTemp$V7[17]))
    GDS_08[NowCodingNum] <<- as.numeric(as.character(DataTemp$V8[17]))
    GDS_09[NowCodingNum] <<- as.numeric(as.character(DataTemp$V9[17]))
    GDS_10[NowCodingNum] <<- as.numeric(as.character(DataTemp$V10[17]))
    GDS_11[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[19]))
    GDS_12[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[19]))
    GDS_13[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[19]))
    GDS_14[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[19]))
    GDS_15[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[19]))
    GDS_16[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[19]))
    GDS_17[NowCodingNum] <<- as.numeric(as.character(DataTemp$V7[19]))
    GDS_18[NowCodingNum] <<- as.numeric(as.character(DataTemp$V8[19]))
    GDS_19[NowCodingNum] <<- as.numeric(as.character(DataTemp$V9[19]))
    GDS_20[NowCodingNum] <<- as.numeric(as.character(DataTemp$V10[19]))
    GDS_21[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[21]))
    GDS_22[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[21]))
    GDS_23[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[21]))
    GDS_24[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[21]))
    GDS_25[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[21]))
    GDS_26[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[21]))
    GDS_27[NowCodingNum] <<- as.numeric(as.character(DataTemp$V7[21]))
    GDS_28[NowCodingNum] <<- as.numeric(as.character(DataTemp$V8[21]))
    GDS_29[NowCodingNum] <<- as.numeric(as.character(DataTemp$V9[21]))
    GDS_30[NowCodingNum] <<- as.numeric(as.character(DataTemp$V10[21]))
  } else if (Task == 3) {
    return("GDS_01 = GDS_01,     GDS_02 = GDS_02,     GDS_03 = GDS_03,     GDS_04 = GDS_04,     GDS_05 = GDS_05,     GDS_06 = GDS_06,     GDS_07 = GDS_07,     GDS_08 = GDS_08,     GDS_09 = GDS_09,     GDS_10 = GDS_10,     GDS_11 = GDS_11,     GDS_12 = GDS_12,     GDS_13 = GDS_13,     GDS_14 = GDS_14,     GDS_15 = GDS_15,     GDS_16 = GDS_16,     GDS_17 = GDS_17,     GDS_18 = GDS_18,     GDS_19 = GDS_19,     GDS_20 = GDS_20,     GDS_21 = GDS_21,     GDS_22 = GDS_22,     GDS_23 = GDS_23,     GDS_24 = GDS_24,     GDS_25 = GDS_25,     GDS_26 = GDS_26,     GDS_27 = GDS_27,     GDS_28 = GDS_28,     GDS_29 = GDS_29,     GDS_30 = GDS_30, ")
  }
}
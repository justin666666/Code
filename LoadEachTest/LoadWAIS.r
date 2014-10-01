# Program: LoadWAIS.r
#          Deal WAIS
#          DigitSym time / DigitSym Total / BlockDesign /
#          Arithmetic / MatrixReason /
#          Information / Comprehension
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadWAIS <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    DigSym_Time <<- array(0,dim = c(LatestCodingNum,1))
    DigSym_Total <<- array(0,dim = c(LatestCodingNum,1))
    BlockDesign <<- array(0,dim = c(LatestCodingNum,1))
    Arithmetic <<- array(0,dim = c(LatestCodingNum,1))
    MatrixReason <<- array(0,dim = c(LatestCodingNum,1))
    Infor <<- array(0,dim = c(LatestCodingNum,1))
    Comprehension <<- array(0,dim = c(LatestCodingNum,1))
  } else if (Task == 2) {
    # Read
    DigSym_Time[NowCodingNum] <<- as.numeric(gsub("s", replacement = "", as.character(DataTemp$V1[108]))) # cancel s
    DigSym_Total[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[108]))
    BlockDesign[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[108]))
    Arithmetic[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[108]))
    MatrixReason[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[108]))
    Infor[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[108]))
    Comprehension[NowCodingNum] <<- as.numeric(as.character(DataTemp$V7[108]))
  } else if (Task == 3) {
    return("DigSym_Time = DigSym_Time, 	DigSym_Total = DigSym_Total, 	BlockDesign = BlockDesign, 	Arithmetic = Arithmetic, 	MatrixReason = MatrixReason, 	Infor = Infor,	Comprehension = Comprehension, ")
  }
}
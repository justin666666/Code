# Program: LoadWMS.r
#          Deal WMS
#          1. Face I
#          2. WordMatch I
#             List A / List B / List C / List D
#          3. WordList I
#             A Try 1st / Try 2nd / Try 3rd / Try 4th / B / Delay
#          4. DrawI
#          5. Spatial Memory
#             Ascend / Descend
#          6. Auditory Memory
#             Ascend / Descend
#     	   7. WordList II
#             Recall / Recognition
#          8. Draw II
#             Recall / Recognition
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadWMS <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    Face <<- array(0,dim = c(LatestCodingNum,1))
      WordMatch_A <<- array(0,dim = c(LatestCodingNum,1))
      WordMatch_B <<- array(0,dim = c(LatestCodingNum,1))
      WordMatch_C <<- array(0,dim = c(LatestCodingNum,1))
      WordMatch_D <<- array(0,dim = c(LatestCodingNum,1))
        WordList1_A1 <<- array(0,dim = c(LatestCodingNum,1))
        WordList1_A2 <<- array(0,dim = c(LatestCodingNum,1))
        WordList1_A3 <<- array(0,dim = c(LatestCodingNum,1))
        WordList1_A4 <<- array(0,dim = c(LatestCodingNum,1))
        WordList1_B <<- array(0,dim = c(LatestCodingNum,1))
        WordList1_Delay <<- array(0,dim = c(LatestCodingNum,1))
          Draw1 <<- array(0,dim = c(LatestCodingNum,1))
            SpatialMem_Ascend <<- array(0,dim = c(LatestCodingNum,1))
            SpatialMem_Descend <<- array(0,dim = c(LatestCodingNum,1))
              AudiMem_Ascend <<- array(0,dim = c(LatestCodingNum,1))
              AudiMem_Descend <<- array(0,dim = c(LatestCodingNum,1))
                WordList2_Recall <<- array(0,dim = c(LatestCodingNum,1))
                WordList2_Recog <<- array(0,dim = c(LatestCodingNum,1))
                  Draw2_Recall <<- array(0,dim = c(LatestCodingNum,1))
                  Draw2_Recog <<- array(0,dim = c(LatestCodingNum,1))
  } else if (Task == 2) {
    # Read
    Face[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[85]))
      WordMatch_A[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[88]))
      WordMatch_B[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[88]))
      WordMatch_C[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[88]))
      WordMatch_D[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[88]))
        WordList1_A1[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[91]))
        WordList1_A2[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[91]))
        WordList1_A3[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[91]))
        WordList1_A4[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[91]))
        WordList1_B[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[91]))
        WordList1_Delay[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[91]))
          Draw1[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[93]))
            SpatialMem_Ascend[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[96]))
            SpatialMem_Descend[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[96]))
              AudiMem_Ascend[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[99]))
              AudiMem_Descend[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[99]))
                WordList2_Recall[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[102]))
                WordList2_Recog[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[102]))
                  Draw2_Recall[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[105]))
                  Draw2_Recog[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[105]))
  } else if (Task == 3) {
    return("Face = Face,         WordMatch_A = WordMatch_A,         WordMatch_B = WordMatch_B,         WordMatch_C = WordMatch_C,         WordMatch_D = WordMatch_D,           WordList1_A1 = WordList1_A1,           WordList1_A2 = WordList1_A2,           WordList1_A3 = WordList1_A3,           WordList1_A4 = WordList1_A4,           WordList1_B =  WordList1_B,           WordList1_Delay = WordList1_Delay,             Draw1 = Draw1,               SpatialMem_Ascend = SpatialMem_Ascend,               SpatialMem_Descend = SpatialMem_Descend,                 AudiMem_Ascend = AudiMem_Ascend,                 AudiMem_Descend = AudiMem_Descend,                   WordList2_Recall = WordList2_Recall,                   WordList2_Recog = WordList2_Recog,                     Draw2_Recall = Draw2_Recall,                     Draw2_Recog = Draw2_Recog, ")
  }
}
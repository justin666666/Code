# Program: LoadExercise.r
#          Deal Exercise
#          Regular / Frequency / Duration / Strength
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadExercise <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    Exer_Regu <<- rep("",times = LatestCodingNum)
    Exer_Freq <<- rep("",times = LatestCodingNum)
    Exer_Dura <<- rep("",times = LatestCodingNum)
    Exer_Strength <<- rep("",times = LatestCodingNum)
  } else if (Task == 2) {
    # Read
    Exer_Regu[NowCodingNum] <<- as.character(DataTemp$V1[70])
    Exer_Freq[NowCodingNum] <<- as.character(DataTemp$V2[70])
    Exer_Dura[NowCodingNum] <<- as.character(DataTemp$V3[70])
    Exer_Strength[NowCodingNum] <<- as.character(DataTemp$V4[70])
  } else if (Task == 3) {
    return("Exer_Regu = Exer_Regu,     Exer_Freq = Exer_Freq,     Exer_Dura = Exer_Dura,     Exer_Strength = Exer_Strength, ")
  }
}
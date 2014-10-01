# Program: LoadLanguage.r
#          Deal Language
#          1. First Language / Speech / Read / Write / Listen
#          2. Second Language / Speech / Read / Write / Listen
#          3. Third Language / Speech / Read / Write / Listen
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadLanguage <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
	Lan1 <<- rep("",times = LatestCodingNum)
	Lan1_Speech <<- rep("",times = LatestCodingNum)
	Lan1_Read <<- rep("",times = LatestCodingNum)
	Lan1_Write <<- rep("",times = LatestCodingNum)
	Lan1_Listen <<- rep("",times = LatestCodingNum)
	  Lan2 <<- rep("",times = LatestCodingNum)
	  Lan2_Speech <<- rep("",times = LatestCodingNum)
	  Lan2_Read <<- rep("",times = LatestCodingNum)
	  Lan2_Write <<- rep("",times = LatestCodingNum)
	  Lan2_Listen <<- rep("",times = LatestCodingNum)
	    Lan3 <<- rep("",times = LatestCodingNum)
	    Lan3_Speech <<- rep("",times = LatestCodingNum)
	    Lan3_Read <<- rep("",times = LatestCodingNum)
	    Lan3_Write <<- rep("",times = LatestCodingNum)
    	Lan3_Listen <<- rep("",times = LatestCodingNum)
  } else if (Task == 2) {
    # Read
    Lan1[NowCodingNum] <<- as.character(DataTemp$V1[47])
	Lan1_Speech[NowCodingNum] <<- as.character(DataTemp$V2[47])
	Lan1_Read[NowCodingNum] <<- as.character(DataTemp$V3[47])
	Lan1_Write[NowCodingNum] <<- as.character(DataTemp$V4[47])
	Lan1_Listen[NowCodingNum] <<- as.character(DataTemp$V5[47])
	  Lan2[NowCodingNum] <<- as.character(DataTemp$V1[50])
	  Lan2_Speech[NowCodingNum] <<- as.character(DataTemp$V2[50])
	  Lan2_Read[NowCodingNum] <<- as.character(DataTemp$V3[50])
	  Lan2_Write[NowCodingNum] <<- as.character(DataTemp$V4[50])
	  Lan2_Listen[NowCodingNum] <<- as.character(DataTemp$V5[50])
	    Lan3[NowCodingNum] <<- as.character(DataTemp$V1[53])
	    Lan3_Speech[NowCodingNum] <<- as.character(DataTemp$V2[53])
	    Lan3_Read[NowCodingNum] <<- as.character(DataTemp$V3[53])
	    Lan3_Write[NowCodingNum] <<- as.character(DataTemp$V4[53])
	    Lan3_Listen[NowCodingNum] <<- as.character(DataTemp$V5[53])
  } else if (Task == 3) {
    return("Lan1 = Lan1, 	  Lan1_Speech = Lan1_Speech, 	  Lan1_Read = Lan1_Read, 	  Lan1_Write = Lan1_Write, 	  Lan1_Listen = Lan1_Listen, 	    Lan2 = Lan2, 	    Lan2_Speech = Lan2_Speech, 	    Lan2_Read = Lan2_Read, 	    Lan2_Write = Lan2_Write, 	    Lan2_Listen = Lan2_Listen, 	      Lan3 = Lan3, 	      Lan3_Speech = Lan3_Speech, 	      Lan3_Read = Lan3_Read, 	      Lan3_Write = Lan3_Write, 	      Lan3_Listen = Lan3_Listen, ")
  }
}
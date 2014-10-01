# Program: LoadHandiness.r
#          Deal Handiness
#          1. Self / Dad/ Mom/ MomDad / MomMom / DadDad / DadMom
#          2. Write / Draw / Pitch / Scissor / Brush / Knife / Spoon / Broom / Lighter / Box / Kick / EyeMajor
#          3. SibLeft / SibRight / ChildLeft / ChildRight
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140909 skylikewater - first release
#

LoadHandiness <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration
    Hand_Self <<- rep("",times = LatestCodingNum)
    Hand_Dad <<- rep("",times = LatestCodingNum)
    Hand_Mom <<- rep("",times = LatestCodingNum)
    Hand_MomDad <<- rep("",times = LatestCodingNum)
    Hand_MomMom <<- rep("",times = LatestCodingNum)
    Hand_DadDad <<- rep("",times = LatestCodingNum)
    Hand_DadMom <<- rep("",times = LatestCodingNum)
      Hand_Write <<- rep("",times = LatestCodingNum)
	  Hand_Draw <<- rep("",times = LatestCodingNum)
  	  Hand_Pitch <<- rep("",times = LatestCodingNum)
	  Hand_Scissor <<- rep("",times = LatestCodingNum)
      Hand_Brush <<- rep("",times = LatestCodingNum)
      Hand_Knife <<- rep("",times = LatestCodingNum)
	  Hand_Spoon <<- rep("",times = LatestCodingNum)
	  Hand_Broom <<- rep("",times = LatestCodingNum)
      Hand_Lighter <<- rep("",times = LatestCodingNum)
	  Hand_Box <<- rep("",times = LatestCodingNum)
	  Hand_Kick <<- rep("",times = LatestCodingNum)
	  Hand_EyeMajor <<- rep("",times = LatestCodingNum)
	    Hand_SibLeft <<- array(0,dim = c(LatestCodingNum,1))
	    Hand_SibRight <<- array(0,dim = c(LatestCodingNum,1))
	    Hand_ChildLeft <<- array(0,dim = c(LatestCodingNum,1))
	    Hand_ChildRight <<- array(0,dim = c(LatestCodingNum,1))
  } else if (Task == 2) {
    # Read
    Hand_Self[NowCodingNum] <<- as.character(DataTemp$V1[8])
    Hand_Dad[NowCodingNum] <<- as.character(DataTemp$V2[8])
    Hand_Mom[NowCodingNum] <<- as.character(DataTemp$V3[8])
    Hand_MomDad[NowCodingNum] <<- as.character(DataTemp$V4[8])
    Hand_MomMom[NowCodingNum] <<- as.character(DataTemp$V5[8])
    Hand_DadDad[NowCodingNum] <<- as.character(DataTemp$V6[8])
    Hand_DadMom[NowCodingNum] <<- as.character(DataTemp$V7[8])
      Hand_Write[NowCodingNum] <<- as.character(DataTemp$V1[10])
	  Hand_Draw[NowCodingNum] <<- as.character(DataTemp$V2[10])
	  Hand_Pitch[NowCodingNum] <<- as.character(DataTemp$V3[10])
	  Hand_Scissor[NowCodingNum] <<- as.character(DataTemp$V4[10])
      Hand_Brush[NowCodingNum] <<- as.character(DataTemp$V5[10])
	  Hand_Knife[NowCodingNum] <<- as.character(DataTemp$V6[10])
	  Hand_Spoon[NowCodingNum] <<- as.character(DataTemp$V1[12])
	  Hand_Broom[NowCodingNum] <<- as.character(DataTemp$V2[12])
	  Hand_Lighter[NowCodingNum] <<- as.character(DataTemp$V3[12])
	  Hand_Box[NowCodingNum] <<- as.character(DataTemp$V4[12])
	  Hand_Kick[NowCodingNum] <<- as.character(DataTemp$V5[12])
	  Hand_EyeMajor[NowCodingNum] <<- as.character(DataTemp$V6[12])
	    Hand_SibLeft[NowCodingNum] <<- as.numeric(as.character(DataTemp$V1[14]))
	    Hand_SibRight[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[14]))
	    Hand_ChildLeft[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[14]))
	    Hand_ChildRight[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[14]))
  } else if (Task == 3) {
    return("Hand_Self = Hand_Self,     Hand_Dad = Hand_Dad,     Hand_Mom = Hand_Mom,     Hand_MomDad = Hand_MomDad,     Hand_MomMom = Hand_MomMom,     Hand_DadDad = Hand_DadDad,     Hand_DadMom = Hand_DadMom,       Hand_Write = Hand_Write, 	  Hand_Draw = Hand_Draw, 	  Hand_Pitch = Hand_Pitch, 	  Hand_Scissor = Hand_Scissor,       Hand_Brush = Hand_Brush, 	  Hand_Knife = Hand_Knife, 	  Hand_Spoon = Hand_Spoon, 	  Hand_Broom = Hand_Broom, 	  Hand_Lighter = Hand_Lighter, 	  Hand_Box = Hand_Box, 	  Hand_Kick = Hand_Kick, 	  Hand_EyeMajor = Hand_EyeMajor, 	    Hand_SibLeft = Hand_SibLeft, 	    Hand_SibRight = Hand_SibRight, 	    Hand_ChildLeft = Hand_ChildLeft, 	    Hand_ChildRight = Hand_ChildRight, ")
  }
}
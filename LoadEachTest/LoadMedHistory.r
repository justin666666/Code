# Program: LoadMedHistory.r
#          Deal Self and Family Medical History
#          Category: Heart / Hypertension / Hyperlipidemia / Stroke / Diabete / 
#                    LiverCirrhosis / Asthma / DegenArthritis / PepticUlcer /
#					 Polyposis / Cancer / Leukemia / Other
#          1. Self
#          2. Family
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadMedHistory <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    Heart_Self <<- array(0,dim = c(LatestCodingNum,1))
    Hypertension_Self <<- array(0,dim = c(LatestCodingNum,1))
    Hyperlipidemia_Self <<- array(0,dim = c(LatestCodingNum,1))
    Stroke_Self <<- array(0,dim = c(LatestCodingNum,1))
    Diabete_Self <<- array(0,dim = c(LatestCodingNum,1))
    LiverCirrhosis_Self <<- array(0,dim = c(LatestCodingNum,1))
    Asthma_Self <<- array(0,dim = c(LatestCodingNum,1))
    DegenArthritis_Self <<- array(0,dim = c(LatestCodingNum,1))
    PepticUlcer_Self <<- array(0,dim = c(LatestCodingNum,1))
    Polyposis_Self <<- array(0,dim = c(LatestCodingNum,1))
    Cancer_Self <<- array(0,dim = c(LatestCodingNum,1))
    Leukemia_Self <<- array(0,dim = c(LatestCodingNum,1))
    Other_Self <<- array(0,dim = c(LatestCodingNum,1))
      Heart_Fam <<- rep("",times = LatestCodingNum)
      Hypertension_Fam <<- rep("",times = LatestCodingNum)
      Hyperlipidemia_Fam <<- rep("",times = LatestCodingNum)
      Stroke_Fam <<- rep("",times = LatestCodingNum)
      Diabete_Fam <<- rep("",times = LatestCodingNum)
      LiverCirrhosis_Fam <<- rep("",times = LatestCodingNum)
      Asthma_Fam <<- rep("",times = LatestCodingNum)
      DegenArthritis_Fam <<- rep("",times = LatestCodingNum)
      PepticUlcer_Fam <<- rep("",times = LatestCodingNum)
      Polyposis_Fam <<- rep("",times = LatestCodingNum)
      Cancer_Fam <<- rep("",times = LatestCodingNum)
      Leukemia_Fam <<- rep("",times = LatestCodingNum)
      Other_Fam <<- rep("",times = LatestCodingNum)
  } else if (Task == 2) {
    # Read
    Heart_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[56]))
    Hypertension_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[56]))
    Hyperlipidemia_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[56]))
    Stroke_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[56]))
    Diabete_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V6[56]))
    LiverCirrhosis_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V7[56]))
    Asthma_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V8[56]))
    DegenArthritis_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V9[56]))
    PepticUlcer_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V10[56]))
    Polyposis_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V2[60]))
    Cancer_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V3[60]))
    Leukemia_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V4[60]))
    Other_Self[NowCodingNum] <<- as.numeric(as.character(DataTemp$V5[60]))
      # Family
      Heart_Fam[NowCodingNum] <<- as.character(DataTemp$V2[58])
      Hypertension_Fam[NowCodingNum] <<- as.character(DataTemp$V3[58])
      Hyperlipidemia_Fam[NowCodingNum] <<- as.character(DataTemp$V4[58])
      Stroke_Fam[NowCodingNum] <<- as.character(DataTemp$V5[58])
      Diabete_Fam[NowCodingNum] <<- as.character(DataTemp$V6[58])
      LiverCirrhosis_Fam[NowCodingNum] <<- as.character(DataTemp$V7[58])
      Asthma_Fam[NowCodingNum] <<- as.character(DataTemp$V8[58])
      DegenArthritis_Fam[NowCodingNum] <<- as.character(DataTemp$V9[58])
      PepticUlcer_Fam[NowCodingNum] <<- as.character(DataTemp$V10[58])
      Polyposis_Fam[NowCodingNum] <<- as.character(DataTemp$V2[62])
      Cancer_Fam[NowCodingNum] <<- as.character(DataTemp$V3[62])
      Leukemia_Fam[NowCodingNum] <<- as.character(DataTemp$V4[62])
      Other_Fam[NowCodingNum] <<- as.character(DataTemp$V5[62])
  } else if (Task == 3) {
    return("Heart_Self = Heart_Self,       Hypertension_Self = Hypertension_Self,       Hyperlipidemia_Self = Hyperlipidemia_Self,       Stroke_Self = Stroke_Self,       Diabete_Self = Diabete_Self,       LiverCirrhosis_Self = LiverCirrhosis_Self,       Asthma_Self = Asthma_Self,       DegenArthritis_Self = DegenArthritis_Self,       PepticUlcer_Self = PepticUlcer_Self,       Polyposis_Self = Polyposis_Self,       Cancer_Self = Cancer_Self,       Leukemia_Self = Leukemia_Self,       Other_Self = Other_Self,         Heart_Fam = Heart_Fam,         Hypertension_Fam = Hypertension_Fam,         Hyperlipidemia_Fam = Hyperlipidemia_Fam,         Stroke_Fam = Stroke_Fam,         Diabete_Fam = Diabete_Fam,         LiverCirrhosis_Fam = LiverCirrhosis_Fam,         Asthma_Fam = Asthma_Fam,         DegenArthritis_Fam = DegenArthritis_Fam,         PepticUlcer_Fam = PepticUlcer_Fam,         Polyposis_Fam = Polyposis_Fam,         Cancer_Fam = Cancer_Fam,         Leukemia_Fam = Leukemia_Fam,         Other_Fam = Other_Fam, ")
  }
}
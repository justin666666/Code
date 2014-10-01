# Program: LoadDiet.r
#          Deal Diet
#          Starch / Egg / Bean / Meat / Fish / Milk / Vegetable / Fruit / Fat / Sugar or Drink
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140915 skylikewater - first release
#

LoadDiet <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration 
    Diet_Starch <<- rep("",times = LatestCodingNum)
    Diet_Egg <<- rep("",times = LatestCodingNum)
    Diet_Bean <<- rep("",times = LatestCodingNum)
    Diet_Meat <<- rep("",times = LatestCodingNum)
    Diet_Fish <<- rep("",times = LatestCodingNum)
    Diet_Milk <<- rep("",times = LatestCodingNum)
    Diet_Vegetable <<- rep("",times = LatestCodingNum)
    Diet_Fruit <<- rep("",times = LatestCodingNum)
    Diet_Fat <<- rep("",times = LatestCodingNum)
    Diet_Sugar <<- rep("",times = LatestCodingNum)
  } else if (Task == 2) {
    # Read
    Diet_Starch[NowCodingNum] <<- as.character(DataTemp$V1[73])
    Diet_Egg[NowCodingNum] <<- as.character(DataTemp$V2[73])
    Diet_Bean[NowCodingNum] <<- as.character(DataTemp$V3[73])
    Diet_Meat[NowCodingNum] <<- as.character(DataTemp$V4[73])
    Diet_Fish[NowCodingNum] <<- as.character(DataTemp$V5[73])
    Diet_Milk[NowCodingNum] <<- as.character(DataTemp$V6[73])
    Diet_Vegetable[NowCodingNum] <<- as.character(DataTemp$V7[73])
    Diet_Fruit[NowCodingNum] <<- as.character(DataTemp$V8[73])
    Diet_Fat[NowCodingNum] <<- as.character(DataTemp$V9[73])
    Diet_Sugar[NowCodingNum] <<- as.character(DataTemp$V10[73])
  } else if (Task == 3) {
    return("Diet_Starch = Diet_Starch,     Diet_Egg = Diet_Egg,     Diet_Bean = Diet_Bean,     Diet_Meat = Diet_Meat,     Diet_Fish = Diet_Fish,     Diet_Milk = Diet_Milk,     Diet_Vegetable = Diet_Vegetable,     Diet_Fruit = Diet_Fruit,     Diet_Fat = Diet_Fat,     Diet_Sugar = Diet_Sugar, ")
  }
}
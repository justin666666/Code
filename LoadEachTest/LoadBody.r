# Program: LoadBody.r
#          Deal Body parameter
#          Height / Weight / BMI / BodyFat / BodyFatCri / InternalFat / Internal Fat / Waistline
#
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140902 skylikewater - first release
# 141001 skylikewater - add criteria
#

LoadBody <- function(Task, NowCodingNum) {
  if (Task == 1) {
    # Declaration
    Height <<- array(0,dim = c(LatestCodingNum,1))
    Weight <<- array(0,dim = c(LatestCodingNum,1))
    BMI <<- array(0,dim = c(LatestCodingNum,1))
	FatCri <<- rep("",times = LatestCodingNum)
    BodyFat <<- array(0,dim = c(LatestCodingNum,1))
    BodyFatCri <<- rep("",times = LatestCodingNum)
    InternalFat <<- array(0,dim = c(LatestCodingNum,1))
    InternalFatCri <<- rep("",times = LatestCodingNum)
    Waistline <<- array(0,dim = c(LatestCodingNum,1))
	WaistlineCri <<- rep("",times = LatestCodingNum)
  } else if (Task == 2) {
    # Read
    Height[NowCodingNum] <<- as.numeric(gsub("cm", replacement = "", as.character(DataTemp$V1[5]))) # cancel cm
    Weight[NowCodingNum] <<- as.numeric(gsub("kg", replacement = "", as.character(DataTemp$V2[5]))) # cancel kg
    BMI[NowCodingNum] <<- (Weight[NowCodingNum]/(Height[NowCodingNum]/100)^2) # calculate kg/m^2 directly 
    # FatCri Cited from Taiwan data !!!
	# Base on :
	# (Chinese) Definition of obesity and obesity epidemiology
	# Dr. Wen-Harn Pan
	# Other :
	# Pan WH, Flegal KM. Chang HY, Yeh CJ, Yeh WT, Lee WC. Body mass 
	# index and obesity-related metabolic disorders in Taiwanese and US whites 
	# and blacks: implications for definitions of overweight and obesity for 
	# Asians. Am J Clin Nutr 2004; 79:31-39. 
	# Deurenberg P, Yap M, van Staveren WA. Body mass index and percent body fat :
	# a meta analysis among different ethnic groups. Int J Obes Relat Metab 
    # Disord. 1998; 22:1164-1171. 
	if (is.na(BMI[NowCodingNum])) {
	  FatCri[NowCodingNum] <<- "NA"
    } else if (BMI[NowCodingNum] < 18.5) {
	  FatCri[NowCodingNum] <<- "Underweight"
	} else if (BMI[NowCodingNum] < 24)  {
	  FatCri[NowCodingNum] <<- "Normal"
	} else if (BMI[NowCodingNum] < 27)  {
	  FatCri[NowCodingNum] <<- "PreObese"
	} else if (BMI[NowCodingNum] < 30)  {
	  FatCri[NowCodingNum] <<- "ObeseClassI"
	} else if (BMI[NowCodingNum] < 35)  {
	  FatCri[NowCodingNum] <<- "ObeseClassII"
	} else if (BMI[NowCodingNum] >= 35)  { 
	  FatCri[NowCodingNum] <<- "ObeseClassIII"
	} else {
	  FatCri[NowCodingNum] <<- "NA"
	}
    BodyFat[NowCodingNum] <<- as.numeric(gsub("%", replacement = "", as.character(DataTemp$V3[5]))) # cancel %
	# Follow OMRON guidebook
    # Lohman, 1986; Nagamine, 1972 (No those paper !)
	if (Sex[NowCodingNum] == "男") {
	  if (is.na(BodyFat[NowCodingNum])) {
	    BodyFatCri[NowCodingNum] <<- "NA"
	  } else if (BodyFat[NowCodingNum] < 10) {
	    BodyFatCri[NowCodingNum] <<- "Underfat"
	  } else if (BodyFat[NowCodingNum] < 20) {
	    BodyFatCri[NowCodingNum] <<- "Normal"
	  } else if (BodyFat[NowCodingNum] < 25) {
	    BodyFatCri[NowCodingNum] <<- "Overweight"
	  } else if (BodyFat[NowCodingNum] >= 25) {
	    BodyFatCri[NowCodingNum] <<- "Obese"
	  } else {
	    BodyFatCri[NowCodingNum] <<- "NA"
	  }
	} else if (Sex[NowCodingNum] == "女") {
	  if (is.na(BodyFat[NowCodingNum])) {
	    BodyFatCri[NowCodingNum] <<- "NA"
	  } else if (BodyFat[NowCodingNum] < 20) {
	    BodyFatCri[NowCodingNum] <<- "Underfat"
	  } else if (BodyFat[NowCodingNum] < 30) {
	    BodyFatCri[NowCodingNum] <<- "Normal"
	  } else if (BodyFat[NowCodingNum] < 35) {
	    BodyFatCri[NowCodingNum] <<- "Overweight"
	  } else if (BodyFat[NowCodingNum] >= 35) {
	    BodyFatCri[NowCodingNum] <<- "Obese"
	  } else {
	    BodyFatCri[NowCodingNum] <<- "NA"
	  }
	} else {
	  BodyFatCri[NowCodingNum] <<- "NA"
	}
    InternalFat[NowCodingNum] <<- as.numeric(gsub("%", replacement = "", as.character(DataTemp$V4[5]))) # cancel %
	# Follow OMRON guidebook
    # No paper
	if (is.na(InternalFat[NowCodingNum])) {
	  InternalFatCri[NowCodingNum] <<- "NA"
    } else if (InternalFat[NowCodingNum] < 10) {
	  InternalFatCri[NowCodingNum] <<- "Normal"
	} else if (InternalFat[NowCodingNum] < 15)  {
	  InternalFatCri[NowCodingNum] <<- "Overweight"
	} else if (InternalFat[NowCodingNum] >= 15)  { 
	  InternalFatCri[NowCodingNum] <<- "Obese"
	} else {
	  InternalFatCri[NowCodingNum] <<- "NA"
	}
    Waistline[NowCodingNum] <<- as.character(DataTemp$V5[5]) # cancel "inch" in Chinese but fail, maybe Chinese limit (?)
    # WaistlineCri Cited from Taiwan data !!!
	# Base on :
	# (Chinese) Definition of obesity and obesity epidemiology
	# Dr. Wen-Harn Pan
	# Other :
	# WHO Japan data for advice to ASIA-Pacific
	# Man for 90cm, Woman for 80cm
	# So inches : Man 35.4331 inches Woman 31.4961 inches
	if (Sex[NowCodingNum] == "男") {
	  if (is.na(Waistline[NowCodingNum])) {
	    WaistlineCri[NowCodingNum] <<- "NA"
	  } else if (Waistline[NowCodingNum] < 35.4331) {
	    WaistlineCri[NowCodingNum] <<- "Normal"
	  } else if (Waistline[NowCodingNum] >= 35.4331) {
	    WaistlineCri[NowCodingNum] <<- "CentralObese"
	  } else {
	    WaistlineCri[NowCodingNum] <<- "NA"
	  }
	} else if (Sex[NowCodingNum] == "女") {
	  if (is.na(Waistline[NowCodingNum])) {
	    WaistlineCri[NowCodingNum] <<- "NA"
	  } else if (Waistline[NowCodingNum] < 31.4961) {
	    WaistlineCri[NowCodingNum] <<- "Normal"
	  } else if (Waistline[NowCodingNum] >= 31.4961) {
	    WaistlineCri[NowCodingNum] <<- "CentralObese"
	  } else {
	    WaistlineCri[NowCodingNum] <<- "NA"
	  }
	} else {
	  WaistlineCri[NowCodingNum] <<- "NA"
	}
	
  } else if (Task == 3) {
    return("Height = Height, Weight = Weight, BMI = BMI, FatCri = FatCri, BodyFat = BodyFat, BodyFatCri = BodyFatCri, InternalFat = InternalFat, InternalFatCri = InternalFatCri, Waistline = Waistline, WaistlineCri = WaistlineCri,")
  } else if (Task == 4) {
    
  }
}
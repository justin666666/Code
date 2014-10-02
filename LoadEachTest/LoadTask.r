# Program: LoadExercise.r
#          Simplify all of Load
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 141002 skylikewater - first release
#

LoadTask <- function(Task, CodingNum, VarName, VarType, VarXDim, VarYDim) {
  # if Task == 1
  # CodingNum is LatestCodingNum
  # else if Task == 2
  # CodingNum is NowCodingNum

  # data path
  setwd('D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data\\CodingSheetCSV')

  Declaration = c(' = rep("", times = CodingNum)',
                  ' = array(0, dim = c(CodingNum,1))')
  Read1 = c('[NowCodingNum] = as.character(DataTemp$V',
            '[NowCodingNum] = as.numeric(as.character(DataTemp$V')
  Read2 = c('])',
            ']))')
  VarTotal = length(VarName)

  if (Task == 1) {
    # Declaration
    for (VarNum in 1:VarTotal) {
	  Str = paste(VarName[VarNum], Declaration[VarType[VarNum]], sep = "")
	  eval(parse(text = Str))
	  if (VarTotal == 1) {
	    ReturnStr = paste("list(", VarName[VarNum], " = ", VarName[VarNum], ")", sep = "")
      } else if (VarNum == 1) {
	    ReturnStr = paste("list(", VarName[VarNum], " = ", VarName[VarNum], ", ", sep = "")
	  } else if (VarNum == VarTotal) {
	    ReturnStr = paste(ReturnStr, VarName[VarNum], " = ", VarName[VarNum], ")", sep = "")
	  } else {
	    ReturnStr = paste(ReturnStr, VarName[VarNum], " = ", VarName[VarNum], ", ", sep = "")
	  }
    }
	ReturnStr = paste("return(", ReturnStr, ")", sep = "")
	eval(parse(text = ReturnStr))
  } else if (Task == 2) {
    # Read
    StrMat = rep("",times = VarTotal)
    for (VarNum in 1:VarTotal) {
	  # Special Var Deal
	  if (VarName[VarNum] == "Num") {
	    StrMat[VarNum] = paste("Data$Num[NowCodingNum] = NowCodingNum")
	  } else if (VarName[VarNum] == "Height") {
	    StrMat[VarNum] = paste("Data$Height[NowCodingNum] =
		                        as.numeric(gsub('cm', replacement = '',
								as.character(DataTemp$V", VarXDim[VarNum], "[", VarYDim[VarNum], "])))", sep = "")
	  } else if (VarName[VarNum] == "Weight") {
	    StrMat[VarNum] = paste("Data$Weight[NowCodingNum] = 
		                        as.numeric(gsub('kg', replacement = '',
								as.character(DataTemp$V", VarXDim[VarNum], "[", VarYDim[VarNum], "])))", sep = "")
	  } else if (VarName[VarNum] == "BMI") {
	    StrMat[VarNum] = "Data$BMI[NowCodingNum] = (Data$Weight[NowCodingNum]/(Data$Height[NowCodingNum]/100)^2)"
	  } else if (VarName[VarNum] == "FatCri") {
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
		StrMat[VarNum] = "if (is.na(Data$BMI[NowCodingNum])) {
		                    Data$FatCri[NowCodingNum] = 'NA'
		                  } else if (Data$BMI[NowCodingNum] < 18.5) {
		                    Data$FatCri[NowCodingNum] = 'Underweight'
		                  } else if (Data$BMI[NowCodingNum] < 24)  {
		                    Data$FatCri[NowCodingNum] = 'Normal'
		                  } else if (Data$BMI[NowCodingNum] < 27)  {
		                    Data$FatCri[NowCodingNum] = 'PreObese'
		                  } else if (Data$BMI[NowCodingNum] < 30)  {
		                    Data$FatCri[NowCodingNum] = 'ObeseClassI'
		                  } else if (Data$BMI[NowCodingNum] < 35)  {
		                    Data$FatCri[NowCodingNum] = 'ObeseClassII'
		                  } else if (Data$BMI[NowCodingNum] >= 35)  { 
		                    Data$FatCri[NowCodingNum] = 'ObeseClassIII'
		                  } else {
		                    Data$FatCri[NowCodingNum] = 'NA'
		                  }"
	  } else if ((VarName[VarNum] == "BodyFat") || (VarName[VarNum] == "InternalFat")) {
	    StrMat[VarNum] = paste("Data$", VarName[VarNum], "[NowCodingNum] = 
		                        as.numeric(gsub('%', replacement = '',
								as.character(DataTemp$V", VarXDim[VarNum], "[", VarYDim[VarNum], "])))", sep = "")
	  } else if (VarName[VarNum] == "BodyFatCri") {						
		# Follow OMRON guidebook
    	# Lohman, 1986; Nagamine, 1972 (No those paper !)
		StrMat[VarNum] = "if (Data$Sex[NowCodingNum] == '男') {
	                        if (is.na(Data$BodyFat[NowCodingNum])) {
	                          Data$BodyFatCri[NowCodingNum] = 'NA'
	                        } else if (Data$BodyFat[NowCodingNum] < 10) {
	                          Data$BodyFatCri[NowCodingNum] = 'Underfat'
	                        } else if (Data$BodyFat[NowCodingNum] < 20) {
	                          Data$BodyFatCri[NowCodingNum] = 'Normal'
	                        } else if (Data$BodyFat[NowCodingNum] < 25) {
	                          Data$BodyFatCri[NowCodingNum] = 'Overweight'
	                        } else if (Data$BodyFat[NowCodingNum] >= 25) {
	                          Data$BodyFatCri[NowCodingNum] = 'Obese'
	                        } else {
	                          Data$BodyFatCri[NowCodingNum] = 'NA'
	                        }
	                      } else if (Data$Sex[NowCodingNum] == '女') {
	                        if (is.na(Data$BodyFat[NowCodingNum])) {
	                          Data$BodyFatCri[NowCodingNum] = 'NA'
	                        } else if (Data$BodyFat[NowCodingNum] < 20) {
	                          Data$BodyFatCri[NowCodingNum] = 'Underfat'
	                        } else if (Data$BodyFat[NowCodingNum] < 30) {
	                          Data$BodyFatCri[NowCodingNum] = 'Normal'
	                        } else if (Data$BodyFat[NowCodingNum] < 35) {
	                          Data$BodyFatCri[NowCodingNum] = 'Overweight'
	                        } else if (Data$BodyFat[NowCodingNum] >= 35) {
	                          Data$BodyFatCri[NowCodingNum] = 'Obese'
	                        } else {
	                          Data$BodyFatCri[NowCodingNum] = 'NA'
	                        }
	                      } else {
	                        Data$BodyFatCri[NowCodingNum] = 'NA'
	                      }"
	  } else if (VarName[VarNum] == "InternalFatCri") {
	    # Follow OMRON guidebook
        # No paper	  
        StrMat[VarNum] = "if (is.na(Data$InternalFat[NowCodingNum])) {
	                        Data$InternalFatCri[NowCodingNum] = 'NA'
                          } else if (Data$InternalFat[NowCodingNum] < 10) {
	                        Data$InternalFatCri[NowCodingNum] = 'Normal'
	                      } else if (Data$InternalFat[NowCodingNum] < 15)  {
	                        Data$InternalFatCri[NowCodingNum] = 'Overweight'
	                      } else if (Data$InternalFat[NowCodingNum] >= 15)  { 
	                        Data$InternalFatCri[NowCodingNum] = 'Obese'
	                      } else {
	                        Data$InternalFatCri[NowCodingNum] = 'NA'
	                      }"
	  } else if (VarName[VarNum] == "WaistlineCri") {						
        # WaistlineCri Cited from Taiwan data !!!
	    # Base on :
	    # (Chinese) Definition of obesity and obesity epidemiology
	    # Dr. Wen-Harn Pan
	    # Other :
	    # WHO Japan data for advice to ASIA-Pacific
	    # Man for 90cm, Woman for 80cm
	    # So inches : Man 35.4331 inches Woman 31.4961 inches
		StrMat[VarNum] = "if (Data$Sex[NowCodingNum] == '男') {
	                       if (is.na(Data$Waistline[NowCodingNum])) {
	                         Data$WaistlineCri[NowCodingNum] = 'NA'
	                       } else if (Data$Waistline[NowCodingNum] < 35.4331) {
	                         Data$WaistlineCri[NowCodingNum] = 'Normal'
	                       } else if (Data$Waistline[NowCodingNum] >= 35.4331) {
	                         Data$WaistlineCri[NowCodingNum] = 'CentralObese'
	                       } else {
	                         Data$WaistlineCri[NowCodingNum] = 'NA'
	                       }
	                     } else if (Data$Sex[NowCodingNum] == '女') {
	                       if (is.na(Data$Waistline[NowCodingNum])) {
	                         Data$WaistlineCri[NowCodingNum] = 'NA'
	                       } else if (Data$Waistline[NowCodingNum] < 31.4961) {
	                         Data$WaistlineCri[NowCodingNum] = 'Normal'
	                       } else if (Data$Waistline[NowCodingNum] >= 31.4961) {
	                         Data$WaistlineCri[NowCodingNum] = 'CentralObese'
	                       } else {
	                         Data$WaistlineCri[NowCodingNum] = 'NA'
	                       }
	                     } else {
	                       Data$WaistlineCri[NowCodingNum] = 'NA'
	                     }"
	  } else {
	    StrMat[VarNum] = paste("Data$", VarName[VarNum], Read1[VarType[VarNum]], VarXDim[VarNum], "[", VarYDim[VarNum], Read2[VarType[VarNum]], sep = "")
      }
	}
	return(StrMat)
  } else if (Task == 3) {
    for (VarNum in 1:VarTotal) {
	  if (VarTotal == 1) {
	    Str = paste(Str, VarName[VarNum], " = ", VarName[VarNum], sep = "")
      } else if (VarNum == 1) {
	    Str = paste(VarName[VarNum], " = ", VarName[VarNum], ", ", sep = "")
	  } else if (VarNum == VarTotal) {
	    Str = paste(Str, VarName[VarNum], " = ", VarName[VarNum], ", ", sep = "")
      }	else {
	    Str = paste(Str, VarName[VarNum], " = ", VarName[VarNum], ", ", sep = "")
	  }
	}
	return(Str)
  }
}
# Program: ADMNeuroPsyShift.r
#          Shift csv
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 141001 skylikewater - first release
#

ADMNeuroPsyShift <- function(CodingSheetFolderPath) {
  # You should change to your path.
  CodingSheetFolderPath = 'D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data\\CodingSheetCSV'
  # data path
  setwd(CodingSheetFolderPath)
  
  setwd(CodingSheetFolderPath)
  CsvList = dir()
  
  LatestCodingNum = as.numeric(substr(CsvList[length(CsvList)],start=5,stop=7)) # get latest coding done
  # so this code only can use in filename : "ADMSXXX.csv", XXX for Subj. Num

  for (CsvListNum in 2:10) {
    NowCodingNum = as.numeric(substr(CsvList[CsvListNum],start = 5,stop = 7))
	# don't load header, missing data put null
	DataTemp = read.csv(CsvList[CsvListNum], header = FALSE, na.string = "NULL")
	DataTempName = names(DataTemp)
	for (NameNum in 1:length(DataTempName)) {
	  Str = paste(DataTempName[NameNum], " = as.character(DataTemp$", DataTempName[NameNum], ")", sep = "")
	  eval(parse(text = Str))
	  # 插入
	  #Str = paste(DataTempName[NameNum], " = c(", DataTempName[NameNum], "[1:59], '', '', ", DataTempName[NameNum], "[60:length(", DataTempName[NameNum],")])", sep = "")
	  #eval(parse(text = Str))
	}
	
	#V1[60] = "目前抽菸"
	#V2[60] = "目前抽量"
	#V3[60] = "目前菸齡"
	#V4[60] = "曾有抽菸"
	#V5[60] = "曾有菸量"
	#V6[60] = "曾有菸齡"
	#V7[60] = "喝酒習慣"
	#V1[61] = V1[63]
	#V2[61] = V2[63]
	#V7[61] = V3[63]
	
	#V1[62] = "目前檳榔"
	#V2[62] = "目前檳量"
	#V3[62] = "目前檳齡"
	#V4[62] = "曾有檳榔"
	#V5[62] = "曾有檳量"
	#V6[62] = "曾有檳齡"
	#V1[63] = V4[63]
	#V2[63] = ""
	#V3[63] = ""

	
	for (NameNum in 1:length(DataTempName)) {
	  if (NameNum == 1) {
	    Str = paste(DataTempName[NameNum], " = ", DataTempName[NameNum], ", ", sep = "")
	  } else if (NameNum == length(DataTempName)) {
	    Str = paste(Str, DataTempName[NameNum], " = ", DataTempName[NameNum], sep = "")
      }	else {
	    Str = paste(Str, DataTempName[NameNum], " = ", DataTempName[NameNum], ", ", sep = "")
	  }
	}
	Str = paste("DataTemp = data.frame(", Str, ")", sep = "")
	eval(parse(text = Str))
	write.table(DataTemp, file = CsvList[CsvListNum], row.names = FALSE, col.names = FALSE, sep = ",")
  }
}
# Program: ADMNeuroPsyShift.r
#          Shift csv
#          
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 141001 skylikewater - first release
#

ADMNeuroPsyNorm <- function(CodingSheetFolderPath) {
  # You should change to your path.
  CodingSheetFolderPath = 'D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data\\CodingSheetCSV'
  # data path
  setwd(CodingSheetFolderPath)
  
  setwd(CodingSheetFolderPath)
  CsvList = dir()
  
  LatestCodingNum = as.numeric(substr(CsvList[length(CsvList)],start=5,stop=7)) # get latest coding done
  # so this code only can use in filename : "ADMSXXX.csv", XXX for Subj. Num

  for (CsvListNum in 2:length(CsvList)) {
    NowCodingNum = as.numeric(substr(CsvList[CsvListNum],start = 5,stop = 7))
	# don't load header, missing data put null
	DataTemp = read.csv(CsvList[CsvListNum], header = FALSE, na.string = "NULL")
	DataTempName = names(DataTemp)
	for (NameNum in 1:length(DataTempName)) {
	  Str = paste(DataTempName[NameNum], " = as.character(DataTemp$", DataTempName[NameNum], ")", sep = "")
	  eval(parse(text = Str))
	}
	
	#V3[4] = as.character(V4[4])
	#V3[5] = as.character(V4[5])
	#V4[4] = as.character(V6[4])
	#V4[5] = as.character(V6[5])
	#V5[4] = as.character(V8[4])
	#V5[5] = as.character(V8[5])
	
	#V6[4] = ""
	#V6[5] = ""
	#V7[4] = ""
	#V7[5] = ""
	#V8[4] = ""
	#V8[5] = ""
	
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
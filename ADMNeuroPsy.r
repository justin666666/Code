# Program: ADMNeuroPsy.r
#          Read all of CSV every people coding,
#          convert to Summary,
#          [Undo] norm-reference
#          and finally save to .csv and .rda
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140222 skylikewater - first release
#

ADMNeuroPsy <- function(CodingSheetFolderPath) {
  # You should change to your path.
  setwd('D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data\\Code')
  
  NowPath = getwd() # save now path
  source('ADMNeuroPsyLoadCSV.r') # skip warnings(), that ok

  # You should change to your path.
  CodingSheetFolderPath = 'D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data\\CodingSheetCSV'
  
  setwd(CodingSheetFolderPath)
  CsvList = dir()
  Data = ADMNeuroPsyLoadCSV(CsvList) # skip warnings(), that bcz Sheet format error
  
  setwd('D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data') # turn back to origin path
  
  Now12=format(Sys.time(), "%y%m%d%H%M%S")
  write.table(Data, file = paste("ADMNeuroPsy",Now12,".csv", sep = ""), row.names = FALSE, sep = ",")
  save(Data, file = paste("ADMNeuroPsy",Now12,".rdata",sep=""))
}
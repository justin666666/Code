# Program: ADMNeuroPsyLoadCSV.r
#          Read all of CSV every people coding,
#          Convert to Summary,
#
# Programmer : skylikewater - Jheng-Ting Chen, NTU GIBMS 2nd, R01454016
#              justin666666@gmail.com
#
# History:
# 140222 skylikewater - first release
# 140307 skylikewater - update to right position
# 140325 skylikewater - add SVS and NEO, correct position by S095
# 140731 skylikewater - fix data.frame error
# 140902 skylikewater - fix for 3.1.1
# 140915 skylikewater - modulation
# 140923 skylikewater - birthday and education
#

ADMNeuroPsyLoadCSV <- function(CsvList) {
  # [Undo] check any other sub-file name in Folder
  # and/or file format error

  LatestCodingNum = as.numeric(substr(CsvList[length(CsvList)],start=5,stop=7)) # get latest coding done
  # so this code only can use in filename : "ADMSXXX.csv", XXX for Subj. Num

  SubTestList = c("Profile", "Body", "Handiness", "GDS", "SelfEva", "STAT", "AD8",
                  "Demo", "Language", "MedHistory", "DisFactor", "Exercise", "Diet",
				  "MMSE", "WMS", "WAIS", "TMT", "SVS", "NEO")
  SubTestTotal = length(SubTestList)
  
  # 1. Source R Code of each Sub Test
  # You should change to your path.
  LoadTaskPath = 'D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data\\Code\\LoadEachTest'
  setwd(LoadTaskPath)
  for (SubTestNum in 1:SubTestTotal) {
    Str = paste("source('Load", SubTestList[SubTestNum], ".r', encoding = 'utf-8')", sep = "")
	eval(parse(text = Str))
  }

  # 2. Declaration Variance
  for (SubTestNum in 1:SubTestTotal) {
    if (SubTestNum == 1) {
	  Str = paste("Data = Load", SubTestList[SubTestNum], "(1, LatestCodingNum, LoadTaskPath)", sep = "")
	} else {
	  Str = paste("Data = c(Data, Load", SubTestList[SubTestNum], "(1, LatestCodingNum, LoadTaskPath))", sep = "")
	}
	eval(parse(text = Str))
  }

  # Call Individual CSV Sheet
  setwd(CodingSheetFolderPath)
  for (CsvListNum in 1:LatestCodingNum) {
    NowCodingNum = as.numeric(substr(CsvList[CsvListNum],start = 5,stop = 7))
	# don't load header, missing data put null
	DataTemp = read.csv(CsvList[CsvListNum], header = FALSE, na.string = "NULL", ) 
	# if seat error, everything wrong ! I use S095 to make.
	
	# 3. Read CSV by Coordination
	for (SubTestNum in 1:SubTestTotal) {
	  Str = paste("StrMat = Load", SubTestList[SubTestNum], "(2, NowCodingNum, LoadTaskPath)", sep = "")
	  eval(parse(text = Str))
	  VarTotal = length(StrMat)
	  for (VarNum in 1:VarTotal) {
	    Str = StrMat[VarNum]
		eval(parse(text = Str))
	  }
	}
  }
  
  # matrix first, data frame last
  eval(parse(text = paste("Data = data.frame(", 
    # Profile
    LoadProfile(3, NowCodingNum), 
    # Body parameter
    LoadBody(3, NowCodingNum), 
    # Handiness
    LoadHandiness(3, NowCodingNum), 
    # GDS
    LoadGDS(3, NowCodingNum), 
    # Self-Evaluation Scale
    LoadSelfEva(3, NowCodingNum), 
    # State-Trait Anxiety Inventory (STAI)
    LoadSTAT(3, NowCodingNum), 
    # AD8
    LoadAD8(3, NowCodingNum), 
    # Demographic
    LoadDemo(3, NowCodingNum), 
    # Language
    LoadLanguage(3, NowCodingNum), 
    # Self and Family Medical History
    LoadMedHistory(3, NowCodingNum), 
    # Disorder Factor
    LoadDisFactor(3, NowCodingNum), 
    # Exercise
    LoadExercise(3, NowCodingNum), 
    # Diet
    LoadDiet(3, NowCodingNum), 
    ####################################    
    # MMSE
    LoadMMSE(3, NowCodingNum), 
    ####################################
    # WMS
    LoadWMS(3, NowCodingNum), 
    ####################################
    # WAIS
    LoadWAIS(3, NowCodingNum), 
    ####################################
    # TMT
    LoadTMT(3, NowCodingNum), 
    ####################################
    # SVS
    LoadSVS(3, NowCodingNum), 
    ####################################
    # NEO
    LoadNEO(3, NowCodingNum),
	")", sep = "")))

	return(Data)
}
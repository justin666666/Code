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

  LatestCodingNum <<- as.numeric(substr(CsvList[length(CsvList)],start=5,stop=7)) # get latest coding done
  # so this code only can use in filename : "ADMSXXX.csv", XXX for Subj. Num

  # You should change to your path.
  setwd('D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data\\Code\\LoadEachTest')
  # skip warnings(), that ok
  # Profile
  source('LoadProfile.r')
  # Body parameter
  source('LoadBody.r')
  # Handiness
  source('LoadHandiness.r')
  # GDS
  source('LoadGDS.r')
  # Self-Evaluation Scale
  source('LoadSelfEva.r')
  # State-Trait Anxiety Inventory (STAI)
  source('LoadSTAT.r')
  # AD8
  source('LoadAD8.r')
  # Demographic
  source('LoadDemo.r')
  # Language
  source('LoadLanguage.r')
  # Self and Family Medical History
  source('LoadMedHistory.r')
  # Disorder Factor
  ####################################
  ######   Need special deal    ######
  #################################### 
  source('LoadDisFactor.r')
  # Exercise
  source('LoadExercise.r')
  # Diet
  source('LoadDiet.r')
  ####################################  
  # MMSE
  source('LoadMMSE.r')
  ####################################
  # WMS
  source('LoadWMS.r')
  ####################################
  # WAIS
  source('LoadWAIS.r')
  ####################################
  # TMT
  source('LoadTMT.r')
  ####################################
  # SVS
  source('LoadSVS.r')
  ####################################
  # NEO
  source('LoadNEO.r')
  
  # data path
  setwd('D:\\Dropbox\\GIBMS_BMLGoh\\ADM\\Data\\CodingSheetCSV')
  
  ####################################
  ######       Declaration      ######
  ###### for number,            ######
  ###### array(0,dim = c(LatestCodingNum,1))
  ###### for text,              ######
  ###### rep("",times = LatestCodingNum)
  ####################################
  NowCodingNum = 1
  # Profile
  LoadProfile(1, NowCodingNum)
  # Body parameter
  LoadBody(1, NowCodingNum)
  # Handiness
  LoadHandiness(1, NowCodingNum)
  # GDS
  LoadGDS(1, NowCodingNum)
  # Self-Evaluation Scale
  LoadSelfEva(1, NowCodingNum)
  # State-Trait Anxiety Inventory (STAI)
  LoadSTAT(1, NowCodingNum)
  # AD8
  LoadAD8(1, NowCodingNum)
  # Demographic
  LoadDemo(1, NowCodingNum)
  # Language
  LoadLanguage(1, NowCodingNum)
  # Self and Family Medical History
  LoadMedHistory(1, NowCodingNum)
  # Disorder Factor
  ####################################
  ######   Need special deal    ######
  #################################### 
  LoadDisFactor(1, NowCodingNum)
  # Exercise
  LoadExercise(1, NowCodingNum)
  # Diet
  LoadDiet(1, NowCodingNum)
  ####################################  
  # MMSE
  LoadMMSE(1, NowCodingNum)
  ####################################
  # WMS
  LoadWMS(1, NowCodingNum)
  ####################################
  # WAIS
  LoadWAIS(1, NowCodingNum)
  ####################################
  # TMT
  LoadTMT(1, NowCodingNum)
  ####################################
  # SVS
  LoadSVS(1, NowCodingNum)
  ####################################
  # NEO
  LoadNEO(1, NowCodingNum)
  ####################################
  ######    Declaration End     ######
  ####################################  

  for (CsvListNum in 1:length(CsvList)) {
    NowCodingNum <<- as.numeric(substr(CsvList[CsvListNum],start = 5,stop = 7))
	# don't load header, missing data put null
	DataTemp <<- read.csv(CsvList[CsvListNum], header = FALSE, na.string = "NULL", ) 
	# if seat error, everything wrong ! I use S095 to make.
	
    ####################################
    ######      Input Start       ######
    ####################################
	# Profile
    LoadProfile(2, NowCodingNum)
    # Body parameter
    LoadBody(2, NowCodingNum)
    # Handiness
    LoadHandiness(2, NowCodingNum)
    # GDS
    LoadGDS(2, NowCodingNum)
    # Self-Evaluation Scale
    LoadSelfEva(2, NowCodingNum)
    # State-Trait Anxiety Inventory (STAI)
    LoadSTAT(2, NowCodingNum)
    # AD8
    LoadAD8(2, NowCodingNum)
    # Demographic
    LoadDemo(2, NowCodingNum)
	# Language
    LoadLanguage(2, NowCodingNum)
    # Self and Family Medical History
    LoadMedHistory(2, NowCodingNum)
	# Disorder Factor
    ####################################
    ######   Need special deal    ######
    #################################### 
    LoadDisFactor(2, NowCodingNum)  
    # Exercise
    LoadExercise(2, NowCodingNum)
    # Diet
    LoadDiet(2, NowCodingNum)
    ####################################    
	# MMSE
    LoadMMSE(2, NowCodingNum)
    ####################################
    # WMS
    LoadWMS(2, NowCodingNum)
    ####################################
	# WAIS
    LoadWAIS(2, NowCodingNum)
    ####################################
    # TMT
    LoadTMT(2, NowCodingNum)
	####################################
   	# SVS
    LoadSVS(2, NowCodingNum)
    ####################################
    # NEO
    LoadNEO(2, NowCodingNum)
    ####################################
    ######      Input End         ######
    ####################################
	
	rm(DataTemp)
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
    ####################################
    ######     Need special deal        ######
    #################################### 
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
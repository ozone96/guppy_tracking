library(lpSolve) # for lp.assign(), hungarian algorithm
library(fields) # for function rdist

path="/media/Data/Documents/VideoAnalysis/check_assigment_algorithm/guppy1/gitGuppy/dataFiles/2013_09_06_view1/"
codePath="/media/Data/Documents/VideoAnalysis/check_assigment_algorithm/guppy1/gitGuppy/trajectoryCode/"
setwd(path)

source(paste(codePath, "preprocessFunctions.r", sep=""))
source(paste(codePath, "mainLoopBlobProcessing.r", sep=""))
source(paste(codePath, "preprocessFunctions.r", sep=""))
source(paste(codePath, "matrixMatching.r", sep=""))
source(paste(codePath, "matrixMatchingSubfunctions.r", sep=""))
source(paste(codePath, "complexMatchingSubfunctions.r", sep=""))
source(paste(codePath, "specialCasesTracking.r", sep=""))
source(paste(codePath, "preprocess.r", sep=""))

options(error=recover)
options(width=250)

infile="AviFileChunk0_View1_0_-1_out.txt"
outfile="guppy1_"

centroidX=327
centroidY=283
patchRadius=492/2

preprocessVideoData(path, infile, outfile, centroidX, centroidY, patchRadius)



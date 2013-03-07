### Script for genome-wide association analysis of Medicago saponin data ###
###--------------------------------------------------------------------

# This analyzes one chromosome at a time, and dumps the output to working directory. It expects the following variables to be fed to it in this order:
# 	genfile = the file where the SNPs are
#	traitfile = the trait file to be analyzed


# Load required libraries
library('MASS')
library(gplots)
library("LDheatmap")
library("genetics")
# multtest available from Bioconductor RUN FIRST TIME ONLY
#source("http://bioconductor.org/biocLite.R")
#biocLite("multtest")
library(multtest)

# Load GAPIT source code from personal fork
source('/home/youngn/stanton0/GAPIT/gapit_functions_JSG.txt')
# Load EMMA code, modified by GAPIT programmers (see User Manual)
source("http://www.maizegenetics.net/images/stories/bioinformatics/GAPIT/emma.txt")


## Load command-line arguments with directories and trait file
curdir <- getwd()
args <- commandArgs(TRUE)
genofile <- args[1]
traitfile <- args[2]


## Load data
traitdata <- read.table(traitfile, header=T)
genodata <- read.csv(genofile, sep="\t", header=FALSE)
dim(genodata)


## Run GAPIT
sink("gapit_log.txt", split = FALSE) # saving log of terminal output

gapitout <- GAPIT(
  Y=traitdata,
  G=genodata,
  SNP.MAF=0.02,
  file.output=TRUE,
  GWAS.plot.output=FALSE                          
)



### Script for genome-wide association analysis of Medicago saponin data ###
###--------------------------------------------------------------------

# Load libraries
library('MASS')
library(gplots)
library("LDheatmap")
library("genetics")
# multtest available from Bioconductor RUN FIRST TIME ONLY
#source("http://bioconductor.org/biocLite.R")
#biocLite("multtest")
library(multtest)

# Load GAPIT source code from personal fork
source('/home/youngn/stanton0/GAPIT/gapit_functions.txt')
# Load EMMA code, modified by GAPIT programmers (see User Manual)
source("http://www.maizegenetics.net/images/stories/bioinformatics/GAPIT/emma.txt")


## Load command-line arguments
args <- commandArgs(trailingOnly = TRUE)
trait <- args[1]
geno <- args[2]
out <- args[3]


## Load data
traitdata <- read.table(trait, header=T)
head(traitdata)
genodata <- read.csv(geno, sep="\t", header=F, nrows=1000)
genodata[1:5,10:20]
dim(genodata)


## Run GAPIT
setwd(out) # save results to out directory

system.time(gapitout <- GAPIT(
Y=traitdata,
G=genodata,
SNP.MAF=0.02,
file.output=FALSE
))



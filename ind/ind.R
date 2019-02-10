# Individual project
# GEO is from:
## https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE7621

# Setup
library(affy)
library(affyPLM)
library(hgu133plus2.db) # for annotation
library(limma) # for linear modeling
library(sva) # for batch effect correction. Contains ComBat and sva.
library(ggplot2) # for plotting
library(dplyr) # for data manipulation
# these next two are not essential to this course
library(mvtnorm) # need this to simulate data from multivariate normal
library(HistData) # need this for data


# MA plot
celFiles = list.celfiles(path = "data", full.names=TRUE)
data.affy <- ReadAffy(filenames = celFiles)
MAplot(data.affy, pairs = TRUE, which=c(1,3,5),
       plot.method = "smoothScatter") #MA plot
boxplot(data.affy, col=c(1:12))

# RMA
data.rma <- rma(data.affy)
expr.rma <- exprs(data.rma) # format as table

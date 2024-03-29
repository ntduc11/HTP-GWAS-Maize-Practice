#GWAS Practice 
#C�i d???t g�i "GAPIT3" tr�n ph???n m???m R 4.1.1
install.packages("devtools")
devtools::install_github("jiabowang/GAPIT3",force=TRUE)
library(GAPIT3)
#Ph�n t�ch GWAS b???ng m� h�nh tuy???n t�nh h???n h???p (MLM)
myGAPIT_MLM <- GAPIT(
  Y=myY[,c(1,2)],
  GD=myGD,
  GM=myGM,
  model="MLM",
  PCA.total=5,
  file.output=T)
#Ph�n t�ch GWAS b???ng m� h�nh tuy???n t�nh thu???ng (GLM)
myGAPIT_GLM <- GAPIT(
  Y=myY[,c(1,2)],
  GD=myGD,
  GM=myGM,
  model="GLM",
  PCA.total=5,
  file.output=T) 
#Ph�n t�ch GWAS b???ng m� h�nh Fixed and random model Circulating Probability Unification (FarmCPU)
myGAPIT_FarmCPU <- GAPIT(
  Y=myY[,c(1,2)],
  GD=myGD,
  GM=myGM,
  model="FarmCPU",
  PCA.total=5,
  file.output=T)

install.packages("rasterVis")
library(rasterVis)
install.packages("raster")
library(raster)
install.packages("rgdal")
library(rgdal)

setwd("D:\\Downloads\\Praharsh\\")
list.files()

Ct_P1<-stack("Period1_AOD_Counts.tif")
names(Ct_P1)<-c(paste0("Count_P1:",as.character(2002:2016)))
C1<-levelplot(Ct_P1)
save.image(C1, file = "")

Ct_P2<-stack("Period2_AOD_Counts.tif")
names(Ct_P2)<-c(paste0("Count_P2:",as.character(2002:2016)))
levelplot(Ct_P2)

Mean_P1<-stack("Period1_AOD_Mean.tif")
names(Mean_P1)<-c(paste0("Mean_P1:",as.character(2002:2016)))
  my.at<-c(seq(0,1,by=0.025),2,3,4)
  #my.brks<-seq(0,4,by=0.05)  
  #mycolorkey<-list(at=my.brks,labels=list(at=my.brks,labels=my.at))
  levelplot(Mean_P1,at=my.at)

Mean_P2<-stack("Period2_AOD_Mean.tif")
names(Mean_P2)<-c(paste0("Mean_P2:",as.character(2002:2016)))
levelplot(Mean_P2,at=my.at)

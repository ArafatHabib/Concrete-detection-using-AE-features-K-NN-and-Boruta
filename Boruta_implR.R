library(mlbench)
library (Boruta)
setwd("C:/Users/Arafat Habib/Desktop/R")
Data1 <- read.csv(file = 'AEFeat.csv')
head(Data1)
set.seed(1)
Boruta.Data1<-Boruta(Outcome~.,data=Data1,doTrace=5,ntree=1000)
Boruta.Data1
plot(Boruta.Data1)
getConfirmedFormula(Boruta.Data1)
a<-attStats(Boruta.Data1)
print(a)


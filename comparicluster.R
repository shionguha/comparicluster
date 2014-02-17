#loading required libraries

library(cluster)
library(mclust)
library(fpc)

#loading sample dataset
clusdata <- read.csv("spaeth_01.csv",header=F,sep=",")

#creating euclidean distance metric
d <- dist(clusdata,method="euclidean")

#running k means
fitk <- kmeans(clusdata,3)

#running wards method
fitw<-hclust(d,method="ward")

#running gmm
fitg<-Mclust(clusdata,3)

#running dbscan
fitd<-dbscan(clusdata,10,MinPts=5,method="raw")

#multiplotting and saving in pdf
pdf('comparicluster.pdf',height=10,width=10)
par(mfrow=c(2,2))
clusplot(clusdata, fitk$cluster, color=TRUE, shade=TRUE,labels=2, lines=0,main="k-means")
clusplot(clusdata, fitg$classification, color=TRUE, shade=TRUE,labels=2, lines=0,main="GMM/BIC") 
clusplot(clusdata, fitd$cluster, color=TRUE, shade=TRUE,labels=2, lines=0,main="DBScan")
plot(fitw,main="Ward's method")
dev.off()


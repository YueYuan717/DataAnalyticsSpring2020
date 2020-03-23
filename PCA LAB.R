data("USArrests")
states<-row.names(USArrests)
states
names(USArrests)
apply(USArrests, 2, mean)
help(apply)##margin=2 means columns, margin=1 means rows, 
#c(1,2)means rows and columns
apply(USArrests,2,var)
pr.out<-prcomp(USArrests,scale. = TRUE)
names(pr.out)
pr.out$center
pr.out$scale
pr.out$rotation
dim(pr.out$x)
biplot(pr.out,scale = 0)

data("iris")
head(iris)
irisdata1<-iris[,1:4]
irisdata1
head(irisdata1)
help("princomp")#cor=a logical value indicating whether 
#the calculation should use the correlation matrix or 
#the covariance matrix.score means a logical value indicating whether 
#the score on each principal component should be calculated.
principal_components<-princomp(irisdata1,cor = TRUE,scores = TRUE)
summary(principal_components)
plot(principal_components)
plot(principal_components,type="l")
biplot(principal_components)
install.packages("MASS")
library(MASS)
data(Boston,package = "MASS")
help(Boston)
help("prcomp")
pca_out<-prcomp(Boston,scale. = T)
pca_out
plot(pca_out)
help("biplot")
biplot(pca_out,scale = 0)
boston_pc<-pca_out$x
boston_pc
head(boston_pc)
summary(boston_pc)

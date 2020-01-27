library("readxl")
EPI_data<-read.csv("2010EPI_data.csv",skip = 1,header = TRUE)
View(EPI_data)
attach(EPI_data) 
fix(EPI_data)
EPI<-EPI_data$EPI
E
tf<-is.na(EPI)
E<-EPI[!tf]
summary(EPI)
fivenum(EPI,na.rm = TRUE)
help(stem)
stem(EPI)
hist(EPI)
hist(EPI,seq(30.,95.,1.0),prob=TRUE)
help("lines")
lines(density(EPI,na.rm = TRUE,bw=1.))
help(rug)
rug(EPI)
plot(ecdf(EPI),do.points=FALSE,verticals = TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250),df=5),x,xlab = "Q-Q plot for t dsn")
qqline(x)
DALY<-EPI_data$DALY
DALY
boxplot(EPI,DALY)
qqplot(EPI,DALY)
help("distributions")
EPILand<-EPI[!Landlock]
ELand<-EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand,seq(30.,95.,1.0),prob=TRUE)

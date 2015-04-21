data <- read.delim("states-data.txt")
data$total.unified <- data$Unified.D+data$Unified.R
plot(data$Year,data$total.unified,type='l',ylim=c(0,50))

plot(data$Year,data$total.unified,type='l',ylim=c(0,50),xlab="Year",ylab="States",main="States with unified control of state government since 1938",col="red",lwd=3)
abline(h=c(0,10,20,30,40,50),col='lightgrey')
abline(v=c(1940,1960,1980,2000),col='lightgrey')

plot(data$Year,data$Divided,type='l',ylim=c(0,30))
lines(data$Year,data$Unified.R,col="red")
lines(data$Year,data$Unified.D,col="blue")

#just the numbers we want to plot
data.we.need<-data[,c("Unified.D","Divided","Unified.R")] 
#a simple reshaping, transposing our data
transposed<-t(data.we.need) 
barplot(transposed,ylim=c(0,50),col=c('blue','grey','red'),border=F)
abline(h=c(1:50),col='white')

pdf(file="stacked-bars.pdf",width=8,height=5)
barplot(transposed,ylim=c(0,50),col=c('blue','grey','red'))
abline(h=c(10,20,30,40),col='white')
dev.off()
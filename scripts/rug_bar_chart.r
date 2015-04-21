
# Plot for 4/9/15 blog post on RUGS
dataDir <- "C:\\Users\\user\\Documents\\stats in r\\R users"
#or
dataDir <-"C:/Users/user/Documents/stats in r/R users"
library(ggplot2)

file <- "rugs_ww_4_7_15-1.csv"
path <- file.path(dataDir,file)

data <- read.csv(path,header=TRUE)
head(data)
dim(data)    #[1] 159   2

# Build a new data frame without missing values
data2 <- data[complete.cases(data),]
head(data2)
dim(data2)   #102   2

# Sort by number of members
data2$RUG <- as.character(data2$RUG)
data3 <- data2[order(-data2$NumMem),]

# Make a small data frame just for plotting
data4 <- data3[1:25,]

# Get the levels right to make the plot go from largest to smallest
data4 <- data4[order(data4$NumMem),]
data4$RUG <- factor(data4$RUG,levels= data4$RUG)

p <- ggplot(data=data4,aes(x=RUG,y=NumMem))

p + geom_bar(stat="identity") + 
  coord_flip() + 
  ylab("Number of Members") +
  ggtitle("Top 25 RUGS by Registered Members")

###Waffle
library(waffle)

Usage <- c(`Mortgage ($84,911)`=84911, `Auto and\ntuition loans ($14,414)`=14414, 
              `Home equity loans ($10,062)`=10062, `Credit Cards ($8,565)`=8565)


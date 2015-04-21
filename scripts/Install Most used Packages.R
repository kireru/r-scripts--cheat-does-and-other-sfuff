# My most used packages

install.packages("reshape2")
install.packages("grid")
install.packages("scales")
install.packages("lubridate")
install.packages("sqldf")
install.packages("sqldf")
install.packages("sqldf")
install.packages("forecast")
install.packages("ggplot2")
install.packages("plyr")
install.packages("stringr")
install.packages("RPostgreSQL")
install.packages("RMYSQL")
install.packages("RMongo")
install.packages("RODBC")
install.packages("RSQLite")
install.packages("lubridate")
install.packages("qcc"),install.packages("reshape2")
install.packages("randomForest")
install.packages("Sim.DiffProcGUI")
install.packages("foreach")
install.packages("cacheSweave")
install.packages("Matrix")
install.packages("survey")
install.packages("xlsReadWrite")
install.packages("rgdal")
install.packages("lme4")
install.packages("xtable")
install.packages("MASS")
install.packages("xts")
install.packages("twitteR")
install.packages("survival")
install.packages("RMySQL")
install.packages("tikzDevice")
install.packages("boot")
install.packages("data.table")
install.packages("Hmisc")
install.packages("RColorBrewer")
install.packages("foreign")
install.packages("reshape2")
install.packages("zoo")
install.packages("latticeExtra")
install.packages("vegan")
install.packages("PerformanceAnalytics")
install.packages("Rcmdr")
install.packages("reshape")
install.packages("RTextTools")
install.packages("lattice")
install.packages("XML")
install.packages("rgl")
install.packages("ape")
install.packages("rJava")
install.packages("rpart")
install.packages("Rcpp")
install.packages("Sim.DiffProc")
install.packages("RODBC")
install.packages("sp")
install.packages("quantmod")
install.packages("car")
install.packages("maxent")
install.packages("maptools")
install.packages("nlme")
install.packages("MCMCglmm")
install.packages("fortunes")
install.packages('SmarterPoland')
devtools::install_github('rstudio/shinyapps')
## Borrowed
# How to know the Most used packages

library(plyr)
library(XML)
 
# build a vector of URL pages we'll want to use
urls <- paste("http://crantastic.org/popcon?page=", 1:10, sep = "")
 
# scrape all the data from the URLs into one big data.frame
packages.df <- ldply(urls, function(url)readHTMLTable(url)[[1]])
 
# turn the "Users" column from factor to numeric
packages.df$Users <- as.numeric(as.character(packages.df$Users))
 
# sort by decreasing "Users"
packages.df <- arrange(packages.df, desc(Users))
 
# print the 50 most used packages
head(packages.df$`Package Name`, 50)

##How to install multiple Packages

libs=c("CircStats","coda","deldir","gplots","igraph","ks","odesolve??","RandomFields")
type=getOption("pkgType")                           
    CheckInstallPackage <- function(packages, repos="http://cran.r-project.org",
       depend=c("Depends", "Imports", "LinkingTo", "Suggests", "Enhances"), ...) {
         installed=as.data.frame(installed.packages())
    for(p in packages) {
        if(is.na(charmatch(p, installed[,1]))) { 
          install.packages(p, repos=repos, dependencies=depend, ...) 
                    }
      }
    } 
    CheckInstallPackage(packages=libs)




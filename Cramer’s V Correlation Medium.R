# load dataset
dataset<- read.csv('BooksSales.csv', stringsAsFactors = T)
# show table
View(dataset)

# show the descriptive statistics
summary(dataset)

# show data type
str(dataset)

# show plot
library(ggplot2)
ggplot(dataset, aes(x=Year, fill=Sales)) + geom_bar(position='fill')

# create table of frequency
table <- table(dataset$Sales,dataset$Year)
table

# correlation test
library(rcompanion)
cramerV(table)
chisq.test(dataset$Sales,dataset$Year)

# load dataset
dataset<- read.csv('BooksSales.csv', stringsAsFactors = T)
# show table
View(dataset)

# show the descriptive statistics
summary(dataset)

# show data type
str(dataset)

# change data type
dataset$Year = as.factor(dataset$Year)

# show plot
library(ggplot2)
ggplot(dataset, aes(x=Year, fill=Genre)) + geom_bar(position='fill')

# create table of frequency
table <- table(dataset$Genre,dataset$Year)
table

# correlation test
library(rcompanion)
cramerV(table)
chisq.test(dataset$Genre,dataset$Year)

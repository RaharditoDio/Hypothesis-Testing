# load dataset
dataset <- read.csv('BooksSales.csv', stringsAsFactors = T)
# show table
View(dataset)

# show the descriptive statistics
summary(dataset)

# show data type
str(dataset)

# show plot
library(ggplot2)
ggplot(dataset, aes(x=Sales, fill=Genre)) + geom_bar(position='fill')

# create table of frequency
table <- table(dataset$Genre,dataset$Sales)
table

# correlation test
library(psych)
abs(phi(table))
chisq.test(dataset$Genre,dataset$Sales)

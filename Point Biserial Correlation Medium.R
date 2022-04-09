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
ggplot(dataset, aes(x=Genre, y=Reviews)) + geom_point()

# convert categorical to numerical
dataset$Genre2 <- ifelse(dataset$Genre=="Fiction", 1, 0)

# correlation test
cor.test(dataset$Reviews, dataset$Genre2)


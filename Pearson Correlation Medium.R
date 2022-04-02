# load dataset
dataset <- read.csv('House Price.csv', stringsAsFactors = T)
# show table
View(dataset)

# show the descriptive statistics
summary(dataset)

# show data dimension and data type
dim(dataset)
str(dataset)

# show plot
library(ggplot2)
ggplot(dataset, aes(x=Area, y=Price)) + geom_point()

# correlation test
cor.test(dataset$Price,dataset$Area, method="pearson")


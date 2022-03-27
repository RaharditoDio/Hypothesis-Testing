# load dataset
dataset <- read.csv("Employee.csv", stringsAsFactors = T, sep=";")
# show table
View(dataset)

# show the first 5 line on the table and descriptive statistics
head(dataset,5)
summary(dataset)

# CHI SQUARE TEST

# create table of test variable
dataset2 <- table(dataset$Status,dataset$Gender)
dataset2
# check expected frequency
chisq.test(dataset2)$expected
# Chi Square Test
chisq.test(dataset$Status,dataset$Gender)


#  FISHER EXACT TEST

# create table of test variable
dataset3 <- table(dataset$Status,dataset$Work_Period)
dataset3
# check expected frequency
chisq.test(dataset3)$expected
# Fisher Exact Test
fisher.test(dataset$Status,dataset$Work_Period)

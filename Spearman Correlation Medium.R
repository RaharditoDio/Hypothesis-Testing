# load dataset
dataset <- read.csv('Employee Rank.csv', stringsAsFactors = T)
# show table
View(dataset)

# show the descriptive statistics
summary(dataset)

# show data type
str(dataset)

# create new column for data rank
dataset$Evaluation_Rank <- rank(-dataset$Evaluation)

# correlation test
cor.test(dataset$Recruitment_Rank, dataset$Evaluation, method='spearman', exact=F)
cor.test(dataset$Recruitment_Rank, dataset$Evaluation_Rank, method='spearman', exact=F)


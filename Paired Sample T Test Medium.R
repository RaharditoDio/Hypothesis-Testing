# load dataset
dataset <- read.csv("checkout_rate.csv", stringsAsFactors = T)
# show table
View(dataset)

# show the descriptive statistics
summary(dataset)

# create new column for difference value
dataset$diff = dataset$Before - dataset$After

# normality test
shapiro.test(dataset$diff)

# The two-tailed alternative hypothesis
t.test(dataset$Before , dataset$After, alternative = "two.sided", paired = T)
t.test(dataset$Before , dataset$After, alternative = "greater", paired = T)
t.test(dataset$Before , dataset$After, alternative = "less", paired = T)
